package nwsuaf.mmloo.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nwsuaf.mmloo.dao.ICommentDao;
import nwsuaf.mmloo.dao.IMistoreDao;
import nwsuaf.mmloo.dao.IMpointDao;
import nwsuaf.mmloo.entity.Comment;
import nwsuaf.mmloo.entity.Mistore;
import nwsuaf.mmloo.entity.Mpoint;
import nwsuaf.mmloo.entity.Order;
import nwsuaf.mmloo.util.PageParam;
import nwsuaf.mmloo.util.PageService;

/**
 * @author LazyMan 米店 米店积分 米店评论 商品上架
 */
@Service
@Transactional
public class MistoreService {

	@Resource
	private IMistoreDao dao;// 米店

	@Resource
	private IMpointDao mpdao;// 米店积分

	@Resource
	private ICommentDao commentDao;// 评论

	@Resource
	private PointService pSer;

	@Resource
	private UserService uSer;

	/**
	 * @param record
	 *            米店注册
	 */
	public void insertMistore(Mistore record) {
		record.setState("'审核中'");
		dao.insert(record);
	}

	/**
	 * @param mname
	 *            米店名称
	 * @return 删除成功为true
	 */
	public boolean deleteMistoreById(String mname) {
		return dao.deleteByPrimaryKey(mname) == 0 ? false : true;
	}

	/**
	 * @param record
	 *            米店记录
	 * @return 更新成功为true
	 */
	public boolean updateMistore(Mistore record) {
		return dao.updateByPrimaryKey(record) == 0 ? false : true;
	}

	/**
	 * @param mistore
	 * @return 批量更新State属性
	 */
	public boolean upStateById(Mistore m) {
		dao.updateByPrimaryKey(m);
		if (null != m && "通过".equals(m.getState())) {

			Mistore mistore = dao.selectByMname(m.getMname());
			Mpoint record = new Mpoint();
			record.setMname(m.getMname());
			record.setMpnote("'注册'");
			record.setMpdate(new Date());
			mistore.setPoint((float) 80);
			dao.updateByPrimaryKey(mistore);
			insertPM(record);
		}
		return true;
	}

	/**
	 * @param mistore
	 * @return 更新所有属性
	 */
	public Mistore upByMname(Mistore record) {
		return dao.selectByPro(record);
	}

	/**
	 * @param record
	 * @return 插入一条米店积分记录
	 */
	public boolean insertPM(Mpoint record) {
		return mpdao.insert(record) == 0 ? false : true;
	}

	// 符合state状态的米店个数
	public int getMistroteRowCount(String state) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("state", state);
		return dao.getRowCount(params);
	}

	public int getShelveRowCount(Object object) {
		
		return 0;
	}

	/**
	 * @param mname
	 * @return 根据店名 选择一个
	 */
	public Mistore selectByMname(String mname) {
		return dao.selectByMname(mname);
	}

	/**
	 * @param state
	 *            状态
	 * @param p
	 * @param currPage
	 *            页码
	 * @return 符合state 分页显示米店信息 按照时间 升序排列
	 */
	public PageParam<Mistore> selectByState(String state, String p, int currPage) {
		// 获取总记录数
		Float point = null;
		try {
			point = Float.valueOf(p);
		} catch (Exception e) {
		}

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("state", state);
		params.put("point", point);
		int rowCount = PageService.getRowCount(dao, params);
		PageParam<Mistore> pageParam = new PageParam<Mistore>();
		pageParam.setPageSize(4);
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		if (currPage < 1) {
			currPage = 1;
		}
		pageParam.setCurrPage(currPage);

		pageParam = PageService.getIpListByPage(pageParam, dao, params);
		return pageParam;
	}

	/**
	 * @param i
	 * @return 查询积分小于等于i，且状态等于state的米店积分的米店个数
	 */
	public int getMistorePoitnRowCount(float point, String state) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("state", state);
		params.put("point", point);
		return dao.getRowCount(params);
	}

	/**
	 * @param i
	 * @return 查询积分小于等于i 且状态等于state的米店积分的米店简略List <店号，积分，状态>
	 */
	public List<Mpoint> selectListByPoint(float i, String state) {
		return mpdao.selectListByPointState(i, state);
	}

	public float insertMpoint(Mpoint record) {
		Mistore mistore = dao.selectByMname(record.getMname());
		float point = mistore.getPoint() + record.getMpup();
		if(point > 100)
		{
			return mistore.getPoint();
		}		
		record.setMpdate(new Date());
		mpdao.insert(record);
		mistore.setPoint(point);
		dao.updateByPrimaryKey(mistore);
		return point;
	}

	/// 评论

	public List<Comment> selectCommentByKid(String mkid) {
		return commentDao.selectByMkid(mkid);
	}

	/**
	 * @param record
	 *            新插入一个记录时 要计算他的评论等级 然后根据有无订单号 和 评论等级 增减米店积分 要为用户增加积分
	 */
	public boolean insertComment(Order order, Comment comment) {
		if (null == comment || null == order) {
			return false;
		}

		if (!"已评价".equals(order.getStatus())) {
			// 计算评论等级
			float level = 1;
			try {
				level = (comment.getSattitude() + comment.getDspeed() + comment.getGpack() + comment.getSatisfaction())
						/ 4;
			} catch (Exception e) {
				return false;
			}
			String levStr = "中评";
			Mpoint mpoint = new Mpoint();
			Mistore mistore = dao.selectByMname(order.getMname());
			if (level > 4) {
				levStr = "好评";
				mpoint.setMpup((float) 0.1);
				mpoint.setMname(order.getMname());
				mpoint.setMpnote("好评：订单" + order.getOrderid());
				mpdao.insert(mpoint);
				mistore.setPoint((float) (mistore.getPoint() + 0.1));
				dao.updateByPrimaryKey(mistore);
			} else if (level <= 1) {
				levStr = "差评";
				mpoint.setMpup((float) -1);
				mpoint.setMname(order.getMname());
				mpoint.setMpnote("差评：订单" + order.getOrderid());
				mpdao.insert(mpoint);
				mistore.setPoint((float) (mistore.getPoint() - 1));
				dao.updateByPrimaryKey(mistore);
			}
			comment.setLevel(levStr);
			uSer.insertPoint(order.getUname(), 20, "评论");
		}

		comment.setUname(order.getUname());
		return commentDao.insert(comment) != 1 ? false : true;
	}

	public boolean deleteCommentById(int id) {
		return commentDao.delete(id) == 0 ? false : true;
	}

	public Mistore selectByMid(int mid) {		
		return dao.selectByMid(mid);
	}

	public Mistore selectByUname(String uname) {	
		return dao.selectByUname(uname);
	}

}

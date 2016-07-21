package nwsuaf.mmloo.dao;

import java.util.List;

import nwsuaf.mmloo.entity.Scan;

public interface IScanDao {
	
	int insert(Scan record);
	
	//根据uname和gid删除记录
	int deleteById(Long sid);
	
	//更新浏览记录的时间
	int updateTime(Scan record);
	
	//查出浏览记录详情
	List<Scan> selectByUname(String uname);
	
	//查看该gid是否已经插入浏览记录
	int selectGid(Scan record);

}
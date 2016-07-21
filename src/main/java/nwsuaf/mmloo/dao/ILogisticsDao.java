package nwsuaf.mmloo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.Logistics;

@Repository
public interface ILogisticsDao {
	
	int insert(Logistics record);
			
	//根据logid查询该订单的物流情况 并按照时间逆序
	List<Logistics> selectListByLogid(Long logid);
	
	int update(Logistics record);
}

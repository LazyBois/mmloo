package nwsuaf.mmloo.dao;

import java.util.List;
import java.util.Map;

import nwsuaf.mmloo.entity.Gshelves;

public interface IGshelvesDao extends IPageDao<Gshelves>{
    int deleteByPrimaryKey(Long gid);

    int insert(Gshelves record);

    Gshelves selectByPrimaryKey(Long gid);

    int updateByPrimaryKey(Gshelves record);

	int insertList(List<Gshelves> record);
	
	List<Gshelves> selectByKey(Map<String, Object> params);

	int getRowCountKey(Map<String, Object> params);

	List<Gshelves> selectByMid(Integer mid);
}
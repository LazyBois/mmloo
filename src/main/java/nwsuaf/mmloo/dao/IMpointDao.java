package nwsuaf.mmloo.dao;

import java.util.List;

import nwsuaf.mmloo.entity.Mpoint;

public interface IMpointDao {

	int insert(Mpoint record);

	int selectByPointState(float i, String state);

	List<Mpoint> selectListByPointState(float i, String state);

}
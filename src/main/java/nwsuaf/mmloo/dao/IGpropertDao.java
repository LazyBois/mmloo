package nwsuaf.mmloo.dao;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.Gpropert;

@Repository
public interface IGpropertDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Gpropert record);

    int insertSelective(Gpropert record);

    IGpropertDao selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Gpropert record);

    int updateByPrimaryKey(Gpropert record);
}
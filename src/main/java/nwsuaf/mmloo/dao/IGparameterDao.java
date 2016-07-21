package nwsuaf.mmloo.dao;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.Gparameter;
@Repository
public interface IGparameterDao {
    int deleteByPrimaryKey(Integer pid);
    
    //Gparameter selectByPrimaryKey(Integer pid);

    int insert(Gparameter record);

    int insertSelective(Gparameter record);
    
    int updateByPrimaryKeySelective(Gparameter record);

    int updateByPrimaryKey(Gparameter record);

}
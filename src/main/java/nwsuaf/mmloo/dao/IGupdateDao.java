package nwsuaf.mmloo.dao;

import org.springframework.stereotype.Repository;

import nwsuaf.mmloo.entity.Gupdate;
@Repository
public interface IGupdateDao {
    int insert(Gupdate record);

    int insertSelective(Gupdate record);
}
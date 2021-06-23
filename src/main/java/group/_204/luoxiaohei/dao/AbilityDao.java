package group._204.luoxiaohei.dao;

import group._204.luoxiaohei.model.Ability;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AbilityDao {

    void add(Ability ability);

    void delete(Integer id);

    Ability getSingle(Integer id);

    String getNote(Integer id);

    List<Ability> getAll();
}

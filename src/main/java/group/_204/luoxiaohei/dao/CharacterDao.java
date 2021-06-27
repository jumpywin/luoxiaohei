package group._204.luoxiaohei.dao;

import group._204.luoxiaohei.model.Ability;
import group._204.luoxiaohei.model.Character;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CharacterDao {
    void add(Character character);

    void delete(Integer id);

    Character getSingle(Integer id);

    String getNote(Integer id);

    List<Character> getAll();

    void update(Character character);

    List<Ability> getAbility(Integer id);

    List<Map<String,String>> getView();
}
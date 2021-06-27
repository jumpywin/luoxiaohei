package group._204.luoxiaohei.service;

import group._204.luoxiaohei.dao.CharacterDao;
import group._204.luoxiaohei.model.Ability;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

import group._204.luoxiaohei.model.Character;

@Slf4j
@Service
public class CharacterService {

    @Resource
    private CharacterDao characterDao;

    public void add(Character character) {
        characterDao.add(character);
    }

    public List<Character> getAll() {
        return characterDao.getAll();
    }

    public void delete(Integer id) {
        characterDao.delete(id);
    }

    public Character getSingle(Integer id) {
        return characterDao.getSingle(id);
    }

    public String getNote(Integer id) {
        return characterDao.getNote(id);
    }

    public void update(Character character){
        characterDao.update(character);
    }

    public List<Ability> getAbility(Integer id){
        return characterDao.getAbility(id);
    }

    public List<Map<String,String>> getView(){return characterDao.getView();}
}

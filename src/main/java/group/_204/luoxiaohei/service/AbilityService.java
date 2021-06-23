package group._204.luoxiaohei.service;

import group._204.luoxiaohei.dao.AbilityDao;
import group._204.luoxiaohei.model.Ability;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Service
public class AbilityService {

    @Resource
    private AbilityDao abilityDao;

    public void add(Ability ability) {
        abilityDao.add(ability);
    }

    public List<Ability> getAll() {
        return abilityDao.getAll();
    }

    public void delete(Integer id) {
        abilityDao.delete(id);
    }

    public Ability getSingle(Integer id){
        return abilityDao.getSingle(id);
    }

    public String getNote(Integer id){
        return abilityDao.getNote(id);
    }
}

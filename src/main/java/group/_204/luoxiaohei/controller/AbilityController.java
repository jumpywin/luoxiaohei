package group._204.luoxiaohei.controller;

import group._204.luoxiaohei.LuoxiaoheiApplication;
import group._204.luoxiaohei.model.Ability;
import group._204.luoxiaohei.service.AbilityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;

@RestController
@RequestMapping("ability")
public class AbilityController {

    static Logger logger = LoggerFactory.getLogger(LuoxiaoheiApplication.class);

    @Resource
    private AbilityService abilityService;

    @GetMapping(path = "view")
    public ResponseEntity<Ability> getView() {
        return new ResponseEntity(abilityService.getAll(), HttpStatus.OK);
    }


    @PostMapping(path = "add")
    public ResponseEntity add(@RequestBody Ability ability) {
        try {
            abilityService.add(ability);
        } catch (Exception e) {
            logger.error("添加失败:"+e.getMessage());
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping(path = "{id}")
    public ResponseEntity delete(@PathVariable Integer id) {
        try {
            abilityService.delete(id);
        } catch (Exception e) {
            logger.error("删除失败：" + e.getMessage());
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @GetMapping(path = "{id}")
    public ResponseEntity getSingle(@PathVariable Integer id) {
        return new ResponseEntity(abilityService.getSingle(id), HttpStatus.OK);
    }

    @GetMapping("note/{id}")
    public ResponseEntity getNote(@PathVariable Integer id) {
        return new ResponseEntity(abilityService.getNote(id), HttpStatus.OK);
    }
}

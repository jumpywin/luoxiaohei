package group._204.luoxiaohei.controller;

import group._204.luoxiaohei.model.Ability;
import group._204.luoxiaohei.service.AbilityService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("ability")
public class AbilityController {
    @Resource
    private AbilityService abilityService;

    @GetMapping(path = "view")
    public ResponseEntity<Ability> getView() {
        return new ResponseEntity(abilityService.getAll(), HttpStatus.OK);
    }


    @PostMapping(path = "add")
    public void add(@RequestBody Ability ability) {
        abilityService.add(ability);
        System.out.println("好耶，添加了一个能力");
//        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping(path = "{id}")
    public ResponseEntity delete(@PathVariable Integer id) {
        abilityService.delete(id);
        return new ResponseEntity(HttpStatus.OK);
    }

    @GetMapping(path = "{id}")
    public ResponseEntity getSingle(@PathVariable Integer id) {
        return new ResponseEntity(abilityService.getSingle(id),HttpStatus.OK);
    }


    @GetMapping("note/{id}")
    public ResponseEntity getNote(@PathVariable Integer id){
        return new ResponseEntity(abilityService.getNote(id),HttpStatus.OK);
    }
}

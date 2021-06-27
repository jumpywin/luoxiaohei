package group._204.luoxiaohei.controller;

import group._204.luoxiaohei.LuoxiaoheiApplication;
import group._204.luoxiaohei.business.Hello;
import group._204.luoxiaohei.service.CharacterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import group._204.luoxiaohei.model.Character;

import javax.annotation.Resource;

@RestController
@RequestMapping("character")
public class CharacterController {

    static Logger logger = LoggerFactory.getLogger(LuoxiaoheiApplication.class);

    @Resource
    private CharacterService characterService;

    /**
     * @return 全部角色的列表
     */
    @GetMapping(path = "allCharacter")
    public ResponseEntity getallCharacter() {
        return new ResponseEntity(characterService.getAll(), HttpStatus.OK);
    }

    /**
     *
     * @return 全部角色的全部信息，应该是很费时的操作吧
     */
    @GetMapping("view")
    public ResponseEntity getView() {
        return new ResponseEntity(characterService.getView(), HttpStatus.OK);
    }

    @GetMapping(path = "{id}")
    public ResponseEntity getSingle(@PathVariable Integer id) {
        return new ResponseEntity(characterService.getSingle(id), HttpStatus.OK);
    }

    @GetMapping("note/{id}")
    public ResponseEntity getNote(@PathVariable Integer id) {
        return new ResponseEntity(characterService.getNote(id), HttpStatus.OK);
    }

    @PostMapping("add")
    public void add(@RequestBody Character character) {
        characterService.add(character);
    }

    @DeleteMapping("{id}")
    public void delete(@PathVariable Integer id) {
        characterService.delete(id);
    }

    @PostMapping("edit")
    public void update(@RequestBody Character character) {
        characterService.update(character);
    }

    /**
     * @param id
     * @return 指定角色的所有能力列表
     */
    @GetMapping("abilities/{id}")
    public ResponseEntity getAbility(@PathVariable Integer id) {
        return new ResponseEntity(characterService.getAbility(id), HttpStatus.OK);
    }
}

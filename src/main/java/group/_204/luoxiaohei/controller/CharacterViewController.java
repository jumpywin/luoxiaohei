package group._204.luoxiaohei.controller;

import group._204.luoxiaohei.LuoxiaoheiApplication;
import group._204.luoxiaohei.dao.CharacterDao;
import group._204.luoxiaohei.model.Ability;
import group._204.luoxiaohei.service.AbilityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.stylesheets.LinkStyle;

import javax.annotation.Resource;
import java.util.*;

@Controller
@RequestMapping("/view")
public class CharacterViewController {
    static Logger logger = LoggerFactory.getLogger(LuoxiaoheiApplication.class);

    @Resource
    private CharacterDao characterDao;

    @GetMapping("/view")
    public String getView(Model model) {
        List<Map<String, String>> characterlist = characterDao.getView();

        model.addAttribute("characterlist", characterlist);
        return "index";
    }
}
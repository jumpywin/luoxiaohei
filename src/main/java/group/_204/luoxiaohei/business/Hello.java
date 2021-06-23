package group._204.luoxiaohei.business;

import group._204.luoxiaohei.model.Character;

import java.util.List;

public class Hello {
    public void hao(List<Character> characterList){
        for (Character a:characterList){
            System.out.println(a.getNote());
        }
    }
}

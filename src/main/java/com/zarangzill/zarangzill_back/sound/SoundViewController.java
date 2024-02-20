package com.zarangzill.zarangzill_back.sound;

import com.zarangzill.zarangzill_back.sound.service.SoundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/sound")
public class SoundViewController {
    @Autowired
    private SoundService soundService;

    //즐겨찾는 사운드
    @RequestMapping(value="/mySoundListView")
    public String mySoundListView(@RequestParam Map paramMap, Model model) {
        paramMap.put("user_id", "1");
        model.addAttribute("soundList", soundService.selectSoundList(paramMap));
        return "/sound/mySoundListView";
    }

    //즐겨찾는 사운드
    @RequestMapping(value="/favoriteSoundListView")
    public String soundListView(@RequestParam Map paramMap, Model model) {
        paramMap.put("user_id", "1");
        model.addAttribute("favoriteSoundList", soundService.selectFavoriteSoundList(paramMap));
        return "/sound/favoriteSoundListView";
    }



}
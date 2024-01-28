package com.zarangzill.zarangzill_back.videofavorite;

import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/videoFavorite")
public class VideoFavoriteViewController {
    /*
    @Autowired
    private VideoFavoriteService videoFavoriteService;

    @RequestMapping(value="/videoFavoriteListView")
    public String videoFavoriteListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("videoFavoriteList", videoFavoriteService.selectVideoFavoriteList(paramMap));
        return "/videoFavorite/videoFavoriteListView";
    }

    @RequestMapping("/videoFavoriteView")
    public String videoFavoriteView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("videoFavoriteInfo", videoFavoriteService.selectVideoFavoriteInfo(paramMap));
        return "videoFavorite/videoFavoriteView";
    }
    */
}
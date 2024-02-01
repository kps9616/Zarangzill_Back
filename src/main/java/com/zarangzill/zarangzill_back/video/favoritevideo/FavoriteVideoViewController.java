package com.zarangzill.zarangzill_back.video.favoritevideo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/favoriteVideo")
public class FavoriteVideoViewController {
    /*
    @Autowired
    private VideoFavoriteService favoriteVideoService;

    @RequestMapping(value="/favoriteVideoListView")
    public String favoriteVideoListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("favoriteVideoList", favoriteVideoService.selectVideoFavoriteList(paramMap));
        return "/favoriteVideo/favoriteVideoListView";
    }

    @RequestMapping("/favoriteVideoView")
    public String favoriteVideoView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("favoriteVideoInfo", favoriteVideoService.selectVideoFavoriteInfo(paramMap));
        return "favoriteVideo/favoriteVideoView";
    }
    */
}
package com.zarangzill.zarangzill_back.video.video;

import com.zarangzill.zarangzill_back.video.video.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/video")
public class VideoViewController {

    @Autowired
    private VideoService videoService;

    @RequestMapping(value="/videoListView")
    public String videoListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("videoList", videoService.selectVideoList(paramMap));
        return "/Video/VideoListView";
    }

    @RequestMapping("/videoView")
    public String videoView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("VideoInfo", videoService.selectVideoInfo(paramMap));
        return "Video/VideoView";
    }

}
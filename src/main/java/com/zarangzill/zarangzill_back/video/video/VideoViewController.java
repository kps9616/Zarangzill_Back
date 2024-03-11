package com.zarangzill.zarangzill_back.video.video;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.video.video.service.VideoService;
import jakarta.servlet.http.HttpSession;
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
    @Autowired
    HttpSession httpSession;

    @RequestMapping(value="/videoListView")
    public String videoListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("videoList", videoService.selectVideoList(paramMap));
        return "/video/VideoListView";
    }

    @RequestMapping("/videoView")
    public String videoView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("VideoInfo", videoService.selectVideoInfo(paramMap));
        return "video/VideoView";
    }

    @RequestMapping(value="/myVideoListView")
    public String myVideoListView(@RequestParam Map paramMap, Model model) {
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        //paramMap.put("user_id" , loginDTO.getUserID());
        paramMap.put("user_id" , 1);
        model.addAttribute("myVideoList", videoService.selectMyVideoList(paramMap));
        model.addAttribute("win_type", paramMap.get("win_type"));
        return "/video/myVideoListView";
    }

}
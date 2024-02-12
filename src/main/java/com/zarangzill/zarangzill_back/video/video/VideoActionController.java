package com.zarangzill.zarangzill_back.video.video;

import com.zarangzill.zarangzill_back.video.video.service.VideoDTO;
import com.zarangzill.zarangzill_back.video.video.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/video")
public class VideoActionController {

    @Autowired
    VideoService videoService;

    @PostMapping("/createVideo")
    public Map createVideo(VideoDTO videoDto) {
        return videoService.createVideo(videoDto);
    }
    /*
    @PostMapping("/updateVideo")
    public Map videoUpdate(VideoDTO videoDto) {
        return videoService.updateVideo(videoDto);
    }
    */
    @PostMapping("/deleteVideo")
    public Map deleteVideo(VideoDTO videoDto) {
        return videoService.deleteVideo(videoDto);
    }


}

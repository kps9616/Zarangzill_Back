package com.zarangzill.zarangzill_back.videofavorite;

import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteDTO;
import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/videoFavorite")
public class VideoFavoriteActionController {

    @Autowired
    VideoFavoriteService videoFavoriteService;

    @PostMapping("/createVideoFavorite")
    public Map createVideoFavorite(VideoFavoriteDTO videoFavoriteDto) {
        return videoFavoriteService.createVideoFavorite(videoFavoriteDto);
    }
    /*
    @PostMapping("/updateVideoFavorite")
    public Map videoFavoriteUpdate(VideoFavoriteDTO videoFavoriteDto) {
        return videoFavoriteService.updateVideoFavorite(videoFavoriteDto);
    }
    */
    @PostMapping("/deleteVideoFavorite")
    public Map deleteVideoFavorite(VideoFavoriteDTO videoFavoriteDto) {
        return videoFavoriteService.deleteVideoFavorite(videoFavoriteDto);
    }


}

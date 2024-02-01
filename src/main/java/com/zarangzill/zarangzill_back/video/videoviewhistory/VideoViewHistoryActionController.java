package com.zarangzill.zarangzill_back.video.videoviewhistory;

import com.zarangzill.zarangzill_back.video.videoviewhistory.service.VideoViewHistoryService;
import com.zarangzill.zarangzill_back.video.videoviewhistory.service.VideoViewHistoryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/videoViewHistory")
public class VideoViewHistoryActionController {

    @Autowired
    VideoViewHistoryService videoViewHistoryService;

    @PostMapping("/createVideoViewHistory")
    public Map createVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto) {
        return videoViewHistoryService.createVideoViewHistory(videoViewHistoryDto);
    }
    /*
    @PostMapping("/updateVideoViewHistory")
    public Map videoViewHistoryUpdate(VideoViewHistoryDTO videoViewHistoryDto) {
        return videoViewHistoryService.updateVideoViewHistory(videoViewHistoryDto);
    }
    */
    @PostMapping("/deleteVideoViewHistory")
    public Map deleteVideoViewHistory(VideoViewHistoryDTO videoViewHistoryDto) {
        return videoViewHistoryService.deleteVideoViewHistory(videoViewHistoryDto);
    }


}

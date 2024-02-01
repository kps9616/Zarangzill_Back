package com.zarangzill.zarangzill_back.video.videoviewhistory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/videoViewHistory")
public class VideoViewHistoryViewController {
    /*
    @Autowired
    private VideoViewHistoryService videoViewHistoryService;

    @RequestMapping(value="/videoViewHistoryListView")
    public String videoViewHistoryListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("videoViewHistoryList", videoViewHistoryService.selectVideoViewHistoryList(paramMap));
        return "/videoViewHistory/videoViewHistoryListView";
    }

    @RequestMapping("/videoViewHistoryView")
    public String videoViewHistoryView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("videoViewHistoryInfo", videoViewHistoryService.selectVideoViewHistoryInfo(paramMap));
        return "videoViewHistory/videoViewHistoryView";
    }
    */
}
package com.zarangzill.zarangzill_back.mypage;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.videofavorite.service.VideoFavoriteService;
import com.zarangzill.zarangzill_back.videoviewhistory.service.VideoViewHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/mypage")
public class MypageViewController {
    @Autowired
    private VideoFavoriteService videoFavoriteService;

    @Autowired
    private VideoViewHistoryService videoViewHistoryService;

    //마이페이지
    @RequestMapping(value="/mypageView")
    public String boardListView(@RequestParam Map ParamMap, Model model) {
        return "/mypage/mypageView";
    }
    
    //최근 본 영상
    @RequestMapping(value="/recentViewVideo")
    public String recentViewVideo(@RequestParam Map ParamMap, Model model) {

        model.addAttribute("videoViewHistoryList", videoViewHistoryService.selectVideoViewHistoryList(ParamMap));
        return "/mypage/recentViewVideo";
    }
    //즐겨찾기 영상
    @RequestMapping(value="/favoriteVideoView")
    public String favoriteVideoView(@RequestParam Map ParamMap, Model model) {
        model.addAttribute("videoFavoriteList", videoFavoriteService.selectVideoFavoriteList(ParamMap));
        return "/mypage/favoriteVideoView";
    }

}
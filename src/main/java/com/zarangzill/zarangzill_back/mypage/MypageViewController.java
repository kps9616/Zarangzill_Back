package com.zarangzill.zarangzill_back.mypage;

import com.zarangzill.zarangzill_back.judge.service.JudgeService;
import com.zarangzill.zarangzill_back.video.favoritevideo.service.FavoriteVideoService;
import com.zarangzill.zarangzill_back.video.videoviewhistory.service.VideoViewHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/mypage")
public class MypageViewController {
    @Autowired
    private FavoriteVideoService favoriteVideoService;
    @Autowired
    private VideoViewHistoryService videoViewHistoryService;
    @Autowired
    private JudgeService judgeService;

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
        model.addAttribute("videoFavoriteList", favoriteVideoService.selectVideoFavoriteList(ParamMap));
        return "/mypage/favoriteVideoView";
    }
    //심사
    @RequestMapping(value="/judgeView")
    public String judgeView(@RequestParam Map ParamMap, Model model) {
        model.addAttribute("judgeScoreList", judgeService.selectJudgeScoreList(ParamMap));
        return "/mypage/judgeView";
    }

}
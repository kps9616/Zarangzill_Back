package com.zarangzill.zarangzill_back.mypage;

import com.zarangzill.zarangzill_back.board.service.BoardService;
import com.zarangzill.zarangzill_back.judge.service.JudgeService;
import com.zarangzill.zarangzill_back.video.reply.service.ReplyService;
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
    @Autowired
    private ReplyService replyService;

    //마이페이지
    @RequestMapping(value="/mypageView")
    public String mypageView(@RequestParam Map ParamMap, Model model) {
        return "/mypage/mypageView";
    }

    //최근 본 영상
    @RequestMapping(value="/recentViewVideo")
    public String recentViewVideo(@RequestParam Map ParamMap, Model model) {
        ParamMap.put("user_id" , "1");
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
    //우승예측
    @RequestMapping(value="/winPredView")
    public String winPredView(@RequestParam Map ParamMap, Model model) {
        //model.addAttribute("judgeScoreList", judgeService.selectJudgeScoreList(ParamMap));
        return "/mypage/winPredView";
    }
    //영상댓글
    @RequestMapping(value="/videoReplyView")
    public String videoReplyView(@RequestParam Map ParamMap, Model model) {
        ParamMap.put("user_id", "1");
        model.addAttribute("videoReplyList", replyService.selectVideoReplyList(ParamMap));
        return "/mypage/videoReplyView";
    }

    //마이페이지(댄서)
    @RequestMapping(value="/mypageDancerView")
    public String mypageDancerView(@RequestParam Map ParamMap, Model model) {
        return "/mypage/dancer/mypageDancerView";
    }

}
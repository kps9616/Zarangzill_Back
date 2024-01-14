package com.zarangzill.zarangzill_back.member;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import com.zarangzill.zarangzill_back.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")

public class MemberActionController {

    @Autowired
    MemberService memberService;
    MemberDTO memberDto;

    @GetMapping("member/info")
    public Map<String, String> info() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        //return responseService.getSingleResult(userJpaRepo.findById(msrl).orElse(null))
        //return responseService.getListResult(userJpaRepo.findAll());
        return response;
    }

    @PostMapping("member/join")
    public Map<String, String> join() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @PostMapping("member/info/update")
    public Map<String, String> infoUpdate() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
/*
    @PostMapping("member/info/delete")
    @ResponseStatus(HttpStatus.CREATED)
    public CommonResult deleteMember(@RequestBody MemberDTO memberDto, HttpServletRequest request, HttpServletResponse response) {

            return responseService.getSuccessResult();

    }
*/
    @GetMapping("member/terms")
    public Map<String, String> terms() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("member/channel/movie")
    public Map<String, String> channelMovie() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("member/channel/fan/board")
    public Map<String, String> channelFanBoard() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("member/channel/member")
    public Map<String, String> channelMember() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
    @GetMapping("member/channel/report")
    public Map<String, String> channelReport() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
    @GetMapping("member/fan/recmm")
    public Map<String, String> channelRecommend() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("member/channel/subc")
    public Map<String, String> channelSubscribe() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


}

package com.zarangzill.zarangzill_back.member;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import com.zarangzill.zarangzill_back.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/member")
public class MemberViewController {
    @Autowired
    MemberService memberService;

    @RequestMapping(value="/memberInfoModifyView")
    public String memberInfoModify(@RequestParam Map paramMap, Model model) {
        MemberDTO memberDto = new MemberDTO();
        memberDto.setId(1);
        model.addAttribute("memberInfo", memberService.selectMemberInfo(memberDto));
        return "member/memberInfoModifyView";
    }
}
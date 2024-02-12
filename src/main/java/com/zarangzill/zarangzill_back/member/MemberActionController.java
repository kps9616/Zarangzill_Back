package com.zarangzill.zarangzill_back.member;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
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
@RequestMapping("/member")
public class MemberActionController {

    @Autowired
    MemberService memberService;


    @PostMapping("/createMember")
    public Map memberCreate(MemberDTO memberDto) {
        return memberService.createMember(memberDto);
    }
    @PostMapping("/updateMember")
    public Map memberUpdate(MemberDTO memberDto) {
        memberDto.setId(1);
        return memberService.updateMember(memberDto);
    }
    @PostMapping("/deleteMember")
    public Map memberDelete(MemberDTO memberDto) {
        return memberService.deleteMember(memberDto);
    }


}

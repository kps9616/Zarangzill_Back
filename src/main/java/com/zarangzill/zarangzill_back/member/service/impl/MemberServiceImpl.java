package com.zarangzill.zarangzill_back.member.service.impl;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import com.zarangzill.zarangzill_back.member.service.MemberService;
import com.zarangzill.zarangzill_back.member.service.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberMapper memberMapper;

    public Map selectMemberInfo(MemberDTO memberDto) {
        return memberMapper.selectMemberInfo(memberDto);
    }

    public Map createMember(MemberDTO memberDto) {
        Map response = new HashMap<>();
        if(memberMapper.createMember(memberDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map updateMember(MemberDTO memberDto) {
        Map response = new HashMap<>();
        if(memberMapper.updateMember(memberDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map deleteMember(MemberDTO memberDto) {
        Map response = new HashMap<>();
        if(memberMapper.deleteMember(memberDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
}

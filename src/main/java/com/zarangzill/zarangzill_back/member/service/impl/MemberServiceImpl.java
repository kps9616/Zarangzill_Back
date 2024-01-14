package com.zarangzill.zarangzill_back.member.service.impl;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import com.zarangzill.zarangzill_back.member.service.MemberService;
import com.zarangzill.zarangzill_back.member.service.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberMapper memberMapper;

    public int createMember(MemberDTO memberDto) {
        return memberMapper.createMember(memberDto);
    }

    public int updateMember(MemberDTO memberDto) {
        return memberMapper.updateMember(memberDto);
    }

    public int deleteMember(MemberDTO memberDto) {
        return memberMapper.deleteMember(memberDto);
    }
}

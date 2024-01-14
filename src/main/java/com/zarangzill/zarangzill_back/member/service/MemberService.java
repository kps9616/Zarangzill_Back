package com.zarangzill.zarangzill_back.member.service;

import org.springframework.stereotype.Service;

@Service
public interface MemberService {
    int createMember(MemberDTO memberDto);

    int updateMember(MemberDTO memberDto);

    int deleteMember(MemberDTO memberDto);
}
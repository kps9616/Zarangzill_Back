package com.zarangzill.zarangzill_back.member.service;

import java.util.Map;

public interface MemberService {
    Map selectMemberInfo(MemberDTO memberDto);

    int createMember(MemberDTO memberDto);

    int updateMember(MemberDTO memberDto);

    int deleteMember(MemberDTO memberDto);
}
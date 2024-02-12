package com.zarangzill.zarangzill_back.member.service;

import java.util.Map;

public interface MemberService {
    Map selectMemberInfo(MemberDTO memberDto);

    Map createMember(MemberDTO memberDto);

    Map updateMember(MemberDTO memberDto);

    Map deleteMember(MemberDTO memberDto);
}
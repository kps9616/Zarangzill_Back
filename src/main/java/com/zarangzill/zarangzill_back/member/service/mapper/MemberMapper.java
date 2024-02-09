package com.zarangzill.zarangzill_back.member.service.mapper;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface MemberMapper {
    Map selectMemberInfo(MemberDTO memberDto);
    int createMember(MemberDTO memberDto);
    int updateMember(MemberDTO memberDto);
    int deleteMember(MemberDTO memberDto);

}

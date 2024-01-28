package com.zarangzill.zarangzill_back.member.service.mapper;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    int createMember(MemberDTO memberDto);
    int updateMember(MemberDTO memberDto);
    int deleteMember(MemberDTO memberDto);

}

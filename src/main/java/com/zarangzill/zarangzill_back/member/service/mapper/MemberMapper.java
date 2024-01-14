package com.zarangzill.zarangzill_back.member.service.mapper;

import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
    public int createMember(MemberDTO memberDto);

    public int updateMember(MemberDTO memberDto);

    public int deleteMember(MemberDTO memberDto);

}

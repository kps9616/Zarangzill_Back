package com.zarangzill.zarangzill_back.mypage.service.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MypageMapper {
    //Map selectMypageInfo(Map mypageMap);
    Map selectMypageDancerInfo(Map mypageMap);
}

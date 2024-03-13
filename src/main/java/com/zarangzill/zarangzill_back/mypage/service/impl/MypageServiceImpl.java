package com.zarangzill.zarangzill_back.mypage.service.impl;

import com.zarangzill.zarangzill_back.mypage.service.MypageService;
import com.zarangzill.zarangzill_back.mypage.service.mapper.MypageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MypageServiceImpl implements MypageService {
    @Autowired
    private MypageMapper mypageMapper;
/*
    public Map selectMypageInfo(Map mypageMap) {
        return mypageMapper.selectMypageInfo(mypageMap);
    }
    */
    public Map selectMypageDancerInfo(Map mypageMap) {
        return mypageMapper.selectMypageDancerInfo(mypageMap);
    }

}

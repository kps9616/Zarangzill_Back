package com.zarangzill.zarangzill_back.shortform.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public interface ShotformService {

    int insertVideoUserFav(ShotformDTO paramMap);
    HashMap selectVideoCountInfo(ShotformDTO paramMap);
    HashMap selectCheckUserVideoFav(ShotformDTO paramMap);
    int insertUserViewHistory(ShotformDTO paramMap);


}

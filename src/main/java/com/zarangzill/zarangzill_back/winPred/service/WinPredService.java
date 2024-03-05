package com.zarangzill.zarangzill_back.winPred.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public interface WinPredService {
    List<HashMap> selectWinPredIngList(WinPredDTO paramMap);

    List<HashMap> selectWinPredMonthEndList(WinPredDTO paramMap);
    List<HashMap> selectWinPredWeekEndList(WinPredDTO paramMap);
    int insertUserWinPredInfo(WinPredDTO paramMap);

}

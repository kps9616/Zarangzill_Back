package com.zarangzill.zarangzill_back.winPred.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public interface WinPredService {
    public List<HashMap> selectWinPredIngList(WinPredDTO paramMap);

    public List<HashMap> selectWinPredMonthEndList(WinPredDTO paramMap);
    public List<HashMap> selectWinPredWeekEndList(WinPredDTO paramMap);


}

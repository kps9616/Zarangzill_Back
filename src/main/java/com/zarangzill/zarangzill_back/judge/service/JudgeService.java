package com.zarangzill.zarangzill_back.judge.service;


import java.util.List;
import java.util.Map;

public interface JudgeService {
    List<Map> selectJudgeScoreList(Map judgeMap);
    int insertJudgeScore(JudgeDTO paramMap) ;
}

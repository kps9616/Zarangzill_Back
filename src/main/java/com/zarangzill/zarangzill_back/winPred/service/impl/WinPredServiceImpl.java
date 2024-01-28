package com.zarangzill.zarangzill_back.winPred.service.impl;

import com.zarangzill.zarangzill_back.winPred.service.WinPredService;
import org.mybatis.spring.SqlSessionTemplate;
import com.zarangzill.zarangzill_back.winPred.service.WinPredDTO;
import com.zarangzill.zarangzill_back.winPred.service.dao.WinPredDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
@Service
public class WinPredServiceImpl implements WinPredService {

    @Autowired
    WinPredDAO winPredDAO;
    @Autowired
    SqlSessionTemplate session;

    public List<HashMap> selectWinPredIngList(WinPredDTO paramMap) {
        return winPredDAO.selectWinPredIngList(paramMap, session);
    }

    public List<HashMap> selectWinPredMonthEndList(WinPredDTO paramMap) {
        return winPredDAO.selectWinPredMonthEndList(paramMap, session);
    }

    public List<HashMap> selectWinPredWeekEndList(WinPredDTO paramMap) {
        return winPredDAO.selectWinPredWeekEndList(paramMap, session);
    }


}

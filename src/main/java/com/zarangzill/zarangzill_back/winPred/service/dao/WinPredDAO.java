package com.zarangzill.zarangzill_back.winPred.service.dao;

import com.zarangzill.zarangzill_back.shortform.service.ShotformDTO;
import org.mybatis.spring.SqlSessionTemplate;
import com.zarangzill.zarangzill_back.winPred.service.WinPredDTO;
import org.springframework.stereotype.Service;


import java.util.HashMap;
import java.util.List;
@Service
public class WinPredDAO {
    public List<HashMap> selectWinPredIngList(WinPredDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("WinPredDAO.selectWinPredIngList", paramMap);
    }

    public List<HashMap> selectWinPredMonthEndList(WinPredDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("WinPredDAO.selectWinPredMonthEndList", paramMap);
    }
    public List<HashMap> selectWinPredWeekEndList(WinPredDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("WinPredDAO.selectWinPredWeekEndList", paramMap);
    }

    public int insertUserWinPredInfo(WinPredDTO paramMap, SqlSessionTemplate session) {
        return session.insert("WinPredDAO.insertUserWinPredInfo", paramMap);
    }


}

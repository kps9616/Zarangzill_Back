package com.zarangzill.zarangzill_back.winPred.service.dao;

import org.mybatis.spring.SqlSessionTemplate;
import com.zarangzill.zarangzill_back.winPred.service.WinPredDTO;
import org.springframework.stereotype.Service;


import java.util.HashMap;
import java.util.List;
@Service
public class WinPredDAO {
    public List<HashMap> selectWinPredIngList(WinPredDTO paramMap, SqlSessionTemplate session) {
        return session.selectList("WinnerMapper.selectWinPredIngList", paramMap);
    }


}

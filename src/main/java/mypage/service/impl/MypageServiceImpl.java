package mypage.service.impl;

import mypage.service.MypageDTO;
import mypage.service.MypageService;
import mypage.service.dao.MypageDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

public class MypageServiceImpl implements MypageService {

    @Autowired
    MypageDAO mypageDAO;

    @Autowired
    SqlSessionTemplate session;

    public MypageDTO getUserInfo(Map loginMap) {
        return mypageDAO.loginUser(loginMap, session);
    }
}

package com.zarangzill.zarangzill_back.login.service.mapper;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;
@Mapper
public interface LoginMapper {
    LoginDTO selectLoginUser(Map param);
    LoginDTO loginUser(Map param);
    LoginDTO loginUser(LoginDTO loginDTO);

}

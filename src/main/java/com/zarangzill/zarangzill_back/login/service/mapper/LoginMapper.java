package com.zarangzill.zarangzill_back.login.service.mapper;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;
@Mapper
public interface LoginMapper {
    public LoginDTO loginUser(Map param);
    public LoginDTO loginUser(LoginDTO loginDTO);

}

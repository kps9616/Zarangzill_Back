package login.service;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;
@Mapper
public interface LoginService {

    public LoginDTO getUserInfo(Map loginMap);

    public LoginDTO getUserInfo(LoginDTO loginDTO);
    public String LoginAction(LoginDTO loginDTO);

}
package com.zarangzill.zarangzill_back.login.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.type.Alias;
@Getter
@Setter
@ToString
public class LoginDTO {
    String userID;
    String name;
    String email;
    String number;
    String loginDT;

    public LoginDTO() {}

    public LoginDTO(String userID, String name, String number, String loginDT) {
        super();
        this.userID = userID;
        this.name = name;
        this.number = number;
        this.loginDT = loginDT;
    }
}

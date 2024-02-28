package com.zarangzill.zarangzill_back.login.service;

import com.zarangzill.zarangzill_back.config.oauth.Role;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginDTO {
    String userID;
    String name;
    String email;
    String number;
    String loginDT;
    String picture;
    private Role role;

    public String getRoleKey() {
        return role.getRoleKey();
    }

}

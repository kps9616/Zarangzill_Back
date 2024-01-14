package com.zarangzill.zarangzill_back.member.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
    int id;
    String name;
    String birthday;
    String gender;
    String number;
    String social_yn;
    String social_type;
    String social_data;
    String last_login;
    String dormant_account;
    String dormant_date;
    String profile_image;
}

package mypage.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.type.Alias;
@Alias("login")
@Getter
@Setter
@ToString
public class MypageDTO {
    String userID;
    String name;
    String number;
    String loginDT;

    public MypageDTO() {}

    public MypageDTO(String userID, String name, String number, String loginDT) {
        super();
        this.userID = userID;
        this.name = name;
        this.number = number;
        this.loginDT = loginDT;
    }
}

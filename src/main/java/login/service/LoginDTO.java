package login.service;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Alias("login")
@Getter
@Setter
@ToString
public class LoginDTO {
    String userID;
    String name;
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

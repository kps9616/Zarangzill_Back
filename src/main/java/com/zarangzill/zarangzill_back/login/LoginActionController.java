package login;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.login.service.LoginService;
import com.zarangzill.zarangzill_back.login.service.SocialLoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1")

public class LoginActionController {
    @Autowired
    LoginService loginService;

    @Autowired
    SocialLoginService socialLoginService;

    @GetMapping("login/login")
    public LoginDTO login(@RequestParam Map<String, Object> map) {

        LoginDTO loginDTO = loginService.getUserInfo(map);
        return loginDTO;
    }

    @GetMapping("login/cert")
    public Map<String, String> cert() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    /*
     * Login Action
     * */
    @RequestMapping(value = "/login/oauth2", produces = "application/json")
    @GetMapping("/code/{registrationId}")
    public String googleLogin(@RequestParam String code, @PathVariable String registrationId) {
        return loginService.LoginAction(socialLoginService.socialLogin(code, registrationId));
    }
}
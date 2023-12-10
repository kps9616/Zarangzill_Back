package login;

import login.service.LoginDTO;
import login.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1")

public class LoginActionController {

    private final LoginService loginService;

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

}

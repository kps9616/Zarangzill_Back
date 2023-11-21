package login;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")

public class LoginActionController {

    @GetMapping("login/login")
    public Map<String, String> login() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
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

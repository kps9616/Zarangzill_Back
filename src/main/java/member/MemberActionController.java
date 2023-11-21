package member;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")

public class MemberActionController {

    @GetMapping("member/info")
    public Map<String, String> info() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @PostMapping("member/join")
    public Map<String, String> join() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @PostMapping("member/info/update")
    public Map<String, String> infoUpdate() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @PostMapping("member/info/delete")
    public Map<String, String> delete() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @GetMapping("member/terms")
    public Map<String, String> terms() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

}

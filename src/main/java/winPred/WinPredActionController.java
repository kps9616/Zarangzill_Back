package winPred;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")

public class WinPredActionController {

    @GetMapping("win/month/list")
    public Map<String, String> monthList() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
    @PostMapping("win/month/insert")
    public Map<String, String> monthInsert() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @GetMapping("win/week/list")
    public Map<String, String> weekList() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "win week list");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
    @PostMapping("win/week/insert")
    public Map<String, String> weekInsert() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "win week insert");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

}

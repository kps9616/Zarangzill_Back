package com.zarangzill.zarangzill_back.board;

import com.zarangzill.zarangzill_back.board.service.BoardDTO;
import com.zarangzill.zarangzill_back.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1")
public class BoardActionController {

    @Autowired
    BoardService boardService;
    BoardDTO boardDto;

    @GetMapping("board/info")
    public Map<String, String> info() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        //return responseService.getSingleResult(userJpaRepo.findById(msrl).orElse(null))
        //return responseService.getListResult(userJpaRepo.findAll());
        return response;
    }

    @PostMapping("board/join")
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


    @PostMapping("board/info/update")
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

    /*
        @PostMapping("board/info/delete")
        @ResponseStatus(HttpStatus.CREATED)
        public CommonResult deleteBoard(@RequestBody BoardDTO boardDto, HttpServletRequest request, HttpServletResponse response) {

                return responseService.getSuccessResult();

        }
    */
    @GetMapping("board/terms")
    public Map<String, String> terms() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("board/channel/movie")
    public Map<String, String> channelMovie() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("board/channel/fan/board")
    public Map<String, String> channelFanBoard() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("board/channel/board")
    public Map<String, String> channelBoard() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @GetMapping("board/channel/report")
    public Map<String, String> channelReport() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @GetMapping("board/fan/recmm")
    public Map<String, String> channelRecommend() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


    @GetMapping("board/channel/subc")
    public Map<String, String> channelSubscribe() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }


}

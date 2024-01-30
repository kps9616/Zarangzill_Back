package com.zarangzill.zarangzill_back.shortform;

import com.zarangzill.zarangzill_back.reply.service.ReplyDTO;
import com.zarangzill.zarangzill_back.shortform.service.ShotformDTO;
import com.zarangzill.zarangzill_back.shortform.service.ShotformService;
import com.zarangzill.zarangzill_back.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@RestController
@RequestMapping("/api/v1")

public class ShortformActionController {

    @Autowired
    ShotformService shotformService;

    @GetMapping("short/list")
    public Map<String, String> list() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @GetMapping("short/search")
    public Map<String, String> search() {
        //숏폼검색
        //해시태그검색
        //네임태그검색
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }

    @PostMapping("short/upload")
    public Map<String, String> upload() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
    @PostMapping("short/upload/file")
    public Map<String, String> uploadFile(@RequestParam("userId") String user_id, @RequestParam("file") MultipartFile multipartFile) {

        Map<String, String> response = new HashMap<String, String>();
        System.out.println("test start");
        System.out.println(user_id);
        System.out.println(multipartFile);
        if(multipartFile==null || multipartFile.isEmpty()) {

            response.put("code", "100");
            response.put("message", "nonFile");
            return response;
        }

        //날짜폴더를 추가
        String currentDate=new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime());
        String uploadFilePath="/data/video/"+user_id+"/"+currentDate+"/";

        String prefix=multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".")+1, multipartFile.getOriginalFilename().length());
        String filename=UUID.randomUUID().toString()+"."+prefix;
        File folder =new File(uploadFilePath);
        if(!folder.isDirectory()) {
            folder.mkdirs();
        }

        String pathname=uploadFilePath +filename;
        File dest=new File(pathname);
        try {
            multipartFile.transferTo(dest);
        }catch (Exception e) {

        }

        response.put("code", "200");
        response.put("message", "success");
        return response;
    }

    @PostMapping("short/Favorit")
    public Map<String, Object> favorit(@RequestParam HashMap map) {
        ShotformDTO param = new ShotformDTO();
        param.setUserId(StringUtil.checkNull(map.get("user_id")));
        param.setVideoId(StringUtil.checkNull(map.get("video_id")));
        param.setFlagUse(StringUtil.checkNull(map.get("flag_use")));
        int result = shotformService.insertVideoUserFav(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }

    @PostMapping("short/reply")
    public Map<String, String> reply() {
        //편집 영상 업로드
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "taehong.kim");
        response.put("age", "28");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
    /*날짜 폴더 생성*/
    private String makeFolder(String user_id) {

        String str = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy/MM/dd H:i:s"));

        String folderPath = str.replace("/", File.separator);

        // make folder --------
        File uploadPathFolder = new File("/data/video/"+user_id, folderPath);

        if(!uploadPathFolder.exists()) {
            boolean mkdirs = uploadPathFolder.mkdirs();
        }

        return folderPath;

    }

    @GetMapping("short/setting")
    public Map<String, Object> setting(@RequestParam HashMap map) {
        ShotformDTO param = new ShotformDTO();
        param.setVideoId(map.get("video_id").toString());

        HashMap result = shotformService.selectVideoCountInfo(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("videoCntInfo", result);
        response.put("message", "succress");
        return response;
    }

    @GetMapping("short/favorit/check")
    public Map<String, Object> checkUserFavorit(@RequestParam HashMap map) {
        ShotformDTO param = new ShotformDTO();
        param.setVideoId(map.get("video_id").toString());
        param.setUserId(map.get("user_id").toString());

        HashMap result = shotformService.selectCheckUserVideoFav(param);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("userFavInfo", result);
        response.put("message", "succress");
        return response;
    }


    @PostMapping("short/view/histroy")
    public Map<String, Object> userViewHistory(@RequestParam HashMap map) {
        ShotformDTO param = new ShotformDTO();
        param.setUserId(StringUtil.checkNull(map.get("user_id")));
        param.setVideoId(StringUtil.checkNull(map.get("video_id")));
        int result = shotformService.insertUserViewHistory(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }
}

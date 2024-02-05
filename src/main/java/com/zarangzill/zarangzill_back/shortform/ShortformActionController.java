package com.zarangzill.zarangzill_back.shortform;

import com.zarangzill.zarangzill_back.shortform.service.ShotformDTO;
import com.zarangzill.zarangzill_back.shortform.service.ShotformService;
import com.zarangzill.zarangzill_back.util.StringUtil;
import org.jcodec.api.FrameGrab;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.common.model.Picture;
import org.jcodec.scale.AWTUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
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

    @GetMapping("short/search/many")
    public Map<String, Object> searchMany(@RequestParam HashMap map) {
        ShotformDTO params = new ShotformDTO();
        String gender = StringUtil.checkNull(map.get("gender"));
        String avgAge = StringUtil.checkNull(map.get("avgAge"));
        params.setGender(gender);
        params.setAvgAge(avgAge);

        List result = shotformService.selectManyViewHistory(params);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        response.put("resultSize",result.size());
        response.put("result",result);
        return response;
    }
    @GetMapping("short/search")
    public Map<String, Object> search(@RequestParam HashMap map) {
        ShotformDTO params = new ShotformDTO();
        String searchType = StringUtil.checkNull(map.get("searchType"));
        String searchKeyword = StringUtil.checkNull(map.get("searchKeyword"));

        params.setSearchType(searchType);
        params.setSearchKeyword(searchKeyword);

        List result = shotformService.selectSearchKeyWordList(params);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        response.put("resultSize",result.size());
        response.put("result",result);
        return response;
    }
    @GetMapping("short/search/detail")
    public Map<String, Object> searchDetail(@RequestParam HashMap map) {
        ShotformDTO params = new ShotformDTO();
        String searchKeyword = StringUtil.checkNull(map.get("searchKeyword"));
        String gender = StringUtil.checkNull(map.get("gender"));
        String avgAge = StringUtil.checkNull(map.get("avgAge"));

        params.setSearchKeyword(searchKeyword);
        params.setGender(gender);
        params.setAvgAge(avgAge);

        List result = shotformService.selectSearchKeyWordDetailList(params);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        response.put("resultSize",result.size());
        response.put("result",result);
        return response;
    }

    @GetMapping("short/winPred/info")
    public Map<String, Object> getWinPredUserInfo(@RequestParam HashMap map) {
        ShotformDTO params = new ShotformDTO();
        String videoId = StringUtil.checkNull(map.get("videoId"));
        String userId = StringUtil.checkNull(map.get("userId"));

        params.setVideoId(videoId);
        params.setUserId(userId);

        ShotformDTO reangeInfo = shotformService.selectWeekPredictionRangeInfo(params);
        List result = shotformService.selectVideoRankListFor4(params);

        LocalDate now = LocalDate.now();
        String year = String.valueOf(now.getYear());
        String month = now.getMonthValue() < 10 ? "0" + String.valueOf(now.getMonthValue()) : String.valueOf(now.getMonthValue());
        String eDay = String.valueOf(now.lengthOfMonth());

        params.setStartDate(year + month  + "01");
        params.setEndDate(year + month  +  eDay);
        params.setWeekStartDate(reangeInfo.getWeekStartDate());
        params.setWeekEndDate(reangeInfo.getWeekEndDate());

        ShotformDTO userPredInfo = shotformService.selectUserCheckWinPredInfo(params);

        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        response.put("result",result);
        response.put("reangeInfo",reangeInfo);
        response.put("userPredInfo",userPredInfo);
        return response;
    }


    @PostMapping("short/upload/ins")
    public Map<String, Object> upload(@RequestParam HashMap map) {
        ShotformDTO params = new ShotformDTO();

        String videoId = shotformService.selectNewVideoId(params);

        params.setVideoId(videoId);
        String videoDescription = StringUtil.checkNull(map.get("videoDescription"));
        String videoPath = StringUtil.checkNull(map.get("videoPath"));
        String videoThumbnail = StringUtil.checkNull(map.get("videoThumbnail"));
        String channelId = StringUtil.checkNull(map.get("channelId"));
        String flagOpen = StringUtil.checkNull(map.get("flagOpen"));
        String videoTags = StringUtil.checkNull(map.get("videoTags"));
        String contributorIds = StringUtil.checkNull(map.get("contributorIds"));

        params.setVideoDescription(videoDescription);
        params.setVideoThumbnail(videoThumbnail);
        params.setVideoPath(videoPath);
        params.setChannelId(channelId);
        params.setFlagOpen(flagOpen);
        params.setVideoTag(videoTags);

        shotformService.insertUserVideoInfo(params);

        String[] tagsList = videoTags.split(",");

        for(String tmpTag : tagsList) {
            params.setVideoTag(tmpTag);
            shotformService.insertUserVideoTagsInfo(params);
        }

        String[] contList = contributorIds.split(",");
        for(String tmpUserId : contList) {
            params.setUserId(tmpUserId);
            shotformService.insertUserVideoContInfo(params);
        }

        //편집 영상 업로드
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");
        return response;
    }
    @PostMapping("short/upload/file")
    public Map<String, Object> uploadFile(@RequestParam("userId") String user_id, @RequestParam("file") MultipartFile multipartFile) {

        Map<String, Object> response = new HashMap<String, Object>();
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
        String uploadFilePath="/upload/video/"+user_id+"/"+currentDate+"/";
        String uploadFileThumbPath="/upload/video/"+user_id+"/"+currentDate+"/thumb";

        String prefix=multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".")+1, multipartFile.getOriginalFilename().length());
        String filename=UUID.randomUUID().toString()+"."+prefix;
        File folder =new File(uploadFilePath);
        if(!folder.isDirectory()) {
            folder.mkdirs();
        }

        String pathname=uploadFilePath +filename;
        String thumbname = uploadFileThumbPath + "/thumb.png";
        File dest=new File(pathname);
        try {
            multipartFile.transferTo(dest);

            FrameGrab grab;

            grab = FrameGrab.createFrameGrab(NIOUtils.readableChannel(dest));
            grab.seekToSecondPrecise(1);

            Picture picture = grab.getNativeFrame();

            BufferedImage bufferedImage = AWTUtil.toBufferedImage(picture);
            ImageIO.write(bufferedImage,"png", new File(thumbname));
        }catch (Exception e) {

        }

        response.put("code", "200");
        response.put("message", "success");
        response.put("filePath", pathname);
        response.put("thumbnail", thumbname);

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

    @PostMapping("short/search/many")
    public Map<String, Object> searchManyViewList(@RequestParam HashMap map) {
        ShotformDTO param = new ShotformDTO();
        param.setUserId(StringUtil.checkNull(map.get("gender")));
        param.setVideoId(StringUtil.checkNull(map.get("avgAge")));
        List<ShotformDTO> result = shotformService.selectManyViewHistory(param);
        //심사 평가 저장
        Map<String, Object> response = new HashMap<String, Object>();
        response.put("code", "200");
        response.put("message", "success");

        if(null != result && !result.isEmpty()) {
            response.put("resultList", result);
            response.put("resultListSize", result.size());
        }
        return response;
    }


}

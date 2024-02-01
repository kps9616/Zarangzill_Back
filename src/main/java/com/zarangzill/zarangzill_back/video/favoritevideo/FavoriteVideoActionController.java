package com.zarangzill.zarangzill_back.video.favoritevideo;

import com.zarangzill.zarangzill_back.video.favoritevideo.service.FavoriteVideoDTO;
import com.zarangzill.zarangzill_back.video.favoritevideo.service.FavoriteVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/favoriteVideo")
public class FavoriteVideoActionController {

    @Autowired
    FavoriteVideoService favoriteVideoService;

    @PostMapping("/createVideoFavorite")
    public Map createVideoFavorite(FavoriteVideoDTO favoriteVideoDto) {
        return favoriteVideoService.createVideoFavorite(favoriteVideoDto);
    }
    /*
    @PostMapping("/updateVideoFavorite")
    public Map favoriteVideoUpdate(VideoFavoriteDTO favoriteVideoDto) {
        return favoriteVideoService.updateVideoFavorite(favoriteVideoDto);
    }
    */
    @PostMapping("/deleteVideoFavorite")
    public Map deleteVideoFavorite(FavoriteVideoDTO favoriteVideoDto) {
        return favoriteVideoService.deleteVideoFavorite(favoriteVideoDto);
    }


}

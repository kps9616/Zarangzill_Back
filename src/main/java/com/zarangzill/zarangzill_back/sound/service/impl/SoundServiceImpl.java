package com.zarangzill.zarangzill_back.sound.service.impl;

import com.zarangzill.zarangzill_back.sound.service.SoundDTO;
import com.zarangzill.zarangzill_back.sound.service.SoundService;
import com.zarangzill.zarangzill_back.sound.service.mapper.SoundMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SoundServiceImpl implements SoundService {
    @Autowired
    private SoundMapper soundMapper;

    public List<Map> selectSoundList(Map soundMap) {
        return soundMapper.selectSoundList(soundMap);
    }

    public List<Map> selectFavoriteSoundList(Map soundMap) {
        return soundMapper.selectFavoriteSoundList(soundMap);
    }

    public SoundDTO selectSoundInfo(Map soundMap) {
        return soundMapper.selectSoundInfo(soundMap);
    }

    public Map createSound(SoundDTO soundDto) {
        Map response = new HashMap<>();
        if(soundMapper.createSound(soundDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map updateSound(SoundDTO soundDto) {
        Map response = new HashMap<>();
        if(soundMapper.updateSound(soundDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map deleteSound(SoundDTO soundDto) {
        Map response = new HashMap<>();
        if(soundMapper.deleteSound(soundDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
}

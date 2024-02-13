package com.zarangzill.zarangzill_back.sound.service;

import java.util.List;
import java.util.Map;

public interface SoundService {
    List<Map> selectSoundList(Map soundMap);
    List<Map> selectFavoriteSoundList(Map soundMap);
    SoundDTO selectSoundInfo(Map soundMap);
    Map createSound(SoundDTO soundDto);
    Map updateSound(SoundDTO soundDto);
    Map deleteSound(SoundDTO soundDto);
}
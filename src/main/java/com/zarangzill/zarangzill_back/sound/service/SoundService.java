package com.zarangzill.zarangzill_back.sound.service;

import java.util.List;
import java.util.Map;

public interface SoundService {
    List<Map> selectSoundList(Map soundMap);
    SoundDTO selectSoundInfo(Map soundMap);
    Map createSound(SoundDTO soundDto);
    Map updateSound(SoundDTO soundDto);
    Map deleteSound(SoundDTO soundDto);
    SoundDTO selectServiceIntroductionInfo();
    SoundDTO selectUseTermsInfo();
    SoundDTO selectPrivacyStatementInfo();
    List<Map> selectFanSoundList(Map soundMap);
    List<Map> selectFanSoundReplyList(Map soundMap);
    Map selectFanSoundInfo(Map soundMap);
}
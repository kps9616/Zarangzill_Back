package com.zarangzill.zarangzill_back.sound.service.mapper;

import com.zarangzill.zarangzill_back.sound.service.SoundDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SoundMapper {
    List<Map> selectSoundList(Map soundMap);

    SoundDTO selectSoundInfo(Map soundMap);
    int createSound(SoundDTO soundDto);
    int updateSound(SoundDTO soundDto);
    int deleteSound(SoundDTO soundDto);
    List<Map> selectFanSoundList(Map soundMap);
    List<Map> selectFanSoundReplyList(Map soundMap);
    Map selectFanSoundInfo(Map soundMap);

}

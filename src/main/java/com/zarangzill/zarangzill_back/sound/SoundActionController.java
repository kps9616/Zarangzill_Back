package com.zarangzill.zarangzill_back.sound;

import com.zarangzill.zarangzill_back.sound.service.SoundDTO;
import com.zarangzill.zarangzill_back.sound.service.SoundService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/sound")
public class SoundActionController {

    @Autowired
    SoundService soundService;

    @PostMapping("/createSound")
    public Map soundCreate(SoundDTO soundDto) {
        return soundService.createSound(soundDto);
    }
    @PostMapping("/updateSound")
    public Map soundUpdate(SoundDTO soundDto) {
        return soundService.updateSound(soundDto);
    }
    @PostMapping("/deleteSound")
    public Map soundDelete(SoundDTO soundDto) {
        return soundService.deleteSound(soundDto);
    }


}

package com.zarangzill.zarangzill_back.channel;

import com.zarangzill.zarangzill_back.channel.service.ChannelDTO;
import com.zarangzill.zarangzill_back.channel.service.ChannelService;
import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/channel")
public class ChannelViewController {
    @Autowired
    private ChannelService channelService;
    @Autowired
    HttpSession httpSession;


    // 내채널
    @RequestMapping(value="/myChannelListView")
    public String myChannel(@RequestParam Map paramMap, Model model) {
        LoginDTO loginDTO = (LoginDTO) httpSession.getAttribute("loginDto");
        ChannelDTO channelDto = new ChannelDTO();
        channelDto.setUserId(loginDTO.getUserID());
        model.addAttribute("usrChannelList", channelService.selectUsrChannelList(channelDto));
        return "channel/myChannelListView";
    }

    @RequestMapping(value="/createChennelView")
    public String createChennelView(@RequestParam Map paramMap, Model model) {
        return "channel/createChennelView";
    }
}
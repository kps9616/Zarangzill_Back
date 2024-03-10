package com.zarangzill.zarangzill_back.winProduct;

import com.zarangzill.zarangzill_back.winProduct.service.WinProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/winProduct")
public class WinProductViewController {
    @Autowired
    private WinProductService winProductService;

    @Autowired
    HttpSession httpSession;

    @RequestMapping(value="/winProductListView")
    public String winProductListView(@RequestParam Map paramMap, Model model) {
        model.addAttribute("winProductList", winProductService.selectWinProductList(paramMap));
        return "/winProduct/winProductListView";
    }
}
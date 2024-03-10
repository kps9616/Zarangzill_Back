package com.zarangzill.zarangzill_back.winProduct.service.impl;

import com.zarangzill.zarangzill_back.winProduct.service.WinProductDTO;
import com.zarangzill.zarangzill_back.winProduct.service.WinProductService;
import com.zarangzill.zarangzill_back.winProduct.service.mapper.WinProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class WinProductServiceImpl implements WinProductService {
    @Autowired
    private WinProductMapper winProductMapper;

    public List<Map> selectWinProductList(Map winProductMap) {
        return winProductMapper.selectWinProductList(winProductMap);
    }

    public Map createWinProduct(WinProductDTO winProductDto) {
        Map response = new HashMap<>();
        if(winProductMapper.createWinProduct(winProductDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map updateWinProduct(WinProductDTO winProductDto) {
        Map response = new HashMap<>();
        if(winProductMapper.updateWinProduct(winProductDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }

    public Map deleteWinProduct(WinProductDTO winProductDto) {
        Map response = new HashMap<>();
        if(winProductMapper.deleteWinProduct(winProductDto) > 0){
            response.put("response", "success");
        } else {
            response.put("response", "fail");
        }
        return response;
    }
}

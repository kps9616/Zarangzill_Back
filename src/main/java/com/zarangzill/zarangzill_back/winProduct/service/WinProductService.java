package com.zarangzill.zarangzill_back.winProduct.service;

import com.zarangzill.zarangzill_back.winProduct.service.WinProductDTO;

import java.util.List;
import java.util.Map;

public interface WinProductService {
    List<Map> selectWinProductList(Map winProductMap);
    Map createWinProduct(WinProductDTO WinProductDto);
    Map updateWinProduct(WinProductDTO WinProductDto);
    Map deleteWinProduct(WinProductDTO WinProductDto);

}
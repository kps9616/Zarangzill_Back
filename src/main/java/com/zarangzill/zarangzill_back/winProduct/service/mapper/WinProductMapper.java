package com.zarangzill.zarangzill_back.winProduct.service.mapper;

import com.zarangzill.zarangzill_back.winProduct.service.WinProductDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface WinProductMapper {
    List<Map> selectWinProductList(Map winProductMap);
    int createWinProduct(WinProductDTO winProductDto);
    int updateWinProduct(WinProductDTO winProductDto);
    int deleteWinProduct(WinProductDTO winProductDto);

}

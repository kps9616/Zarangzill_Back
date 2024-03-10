package com.zarangzill.zarangzill_back.winProduct.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WinProductDTO {
    int winProduct_id;
    String subject;
    String description;
    String thumbnail;
    String price;
    String created_at;
    String updated_at;

}

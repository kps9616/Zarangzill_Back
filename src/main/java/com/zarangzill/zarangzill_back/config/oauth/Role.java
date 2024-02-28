package com.zarangzill.zarangzill_back.config.oauth;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Role {
 
    GUEST("ROLE_GUEST", "GUEST"),
    USER("ROLE_USER", "USER");
 
    private final String roleKey;
    private final String roleTitle;
 
}
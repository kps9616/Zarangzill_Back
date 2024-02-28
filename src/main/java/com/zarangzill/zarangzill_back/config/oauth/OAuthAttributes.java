package com.zarangzill.zarangzill_back.config.oauth;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import lombok.Builder;
import lombok.Getter;

import java.util.Map;

@Getter
public class OAuthAttributes {
 
    public Map<String, Object> attributes;
    private String nameAttributeKey;
    private String name;
    private String email;
    private String picture;
 
    @Builder
    public OAuthAttributes(Map<String, Object> attributes, String nameAttributeKey, String name, String email, String picture){
        this.attributes=attributes;
        this.nameAttributeKey=nameAttributeKey;
        this.name=name;
        this.email=email;
        this.picture=picture;
    }
 
    public static OAuthAttributes of(String registrationId, String userNameAttributeName, Map<String,Object> attributes){
        return ofGoogle(userNameAttributeName, attributes);
    }
    
    private static OAuthAttributes ofGoogle(String userNameAttributeName, Map<String,Object> attributes){
        
        return OAuthAttributes.builder()
                .name((String) attributes.get("name"))
                .email((String)attributes.get("email"))
                .nameAttributeKey(userNameAttributeName)
                .attributes(attributes)
                .picture((String) attributes.get("picture"))
                .build();
    }

    public LoginDTO toEntity(){
        LoginDTO loginDto = new LoginDTO();
        loginDto.setEmail(email);
        loginDto.setName(name);
        loginDto.setPicture(picture);
        loginDto.setRole(Role.GUEST);
        return loginDto;
    }


}
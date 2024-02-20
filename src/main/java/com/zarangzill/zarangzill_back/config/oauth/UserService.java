package com.zarangzill.zarangzill_back.config.oauth;

import java.util.Map;

import com.zarangzill.zarangzill_back.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService extends DefaultOAuth2UserService {

	@Autowired
	LoginService loginService;

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		
		// email, oauthType ȣ��
		Map attributes = super.loadUser(userRequest).getAttributes();
		log.info("ATTR INFO : {}", attributes.toString());
		
		String email = null;
		String oauthType = userRequest.getClientRegistration().getRegistrationId();
		
		OAuth2User user2 = super.loadUser(userRequest);

		if("kakao".equals(oauthType.toLowerCase())) {
			email = ((Map) attributes.get("kakao_account")).get("email").toString();
		}
		else if("google".equals(oauthType.toLowerCase())) {
			email = attributes.get("email").toString();
		}
		else if("naver".equals(oauthType.toLowerCase())) {
			email = ((Map) attributes.get("response")).get("email").toString();
		}
		
		return super.loadUser(userRequest);
	}
}
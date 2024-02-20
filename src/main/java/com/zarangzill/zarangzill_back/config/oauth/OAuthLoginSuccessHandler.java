package com.zarangzill.zarangzill_back.config.oauth;

import java.io.IOException;
import java.util.Map;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Component
public class OAuthLoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	@Autowired UserService userService;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
										Authentication authentication) throws IOException, ServletException {

		OAuth2AuthenticationToken token = (OAuth2AuthenticationToken) authentication;

		String email = null;
		String oauthType = token.getAuthorizedClientRegistrationId();
		
		if("kakao".equals(oauthType.toLowerCase())) {
			email = ((Map) token.getPrincipal().getAttribute("kakao_account")).get("email").toString();
		}
		else if("google".equals(oauthType.toLowerCase())) {
			email = token.getPrincipal().getAttribute("email").toString();
		}
		else if("naver".equals(oauthType.toLowerCase())) {
			email = ((Map) token.getPrincipal().getAttribute("response")).get("email").toString();
		}
		
		log.info("LOGIN SUCCESS : {} FROM {}", email, oauthType);

		log.info("USER SAVED IN SESSION");
		HttpSession session = request.getSession();
		session.setAttribute("user", 1);

		super.onAuthenticationSuccess(request, response, authentication);
	}

}
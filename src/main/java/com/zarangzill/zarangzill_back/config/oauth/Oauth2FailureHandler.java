package com.zarangzill.zarangzill_back.config.oauth;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Oauth2FailureHandler extends SimpleUrlAuthenticationFailureHandler {
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response
			, AuthenticationException exception) throws IOException {
		response.sendRedirect("/termsOfUse?errMsg="+ URLEncoder.encode(exception.getMessage()));
	}
}
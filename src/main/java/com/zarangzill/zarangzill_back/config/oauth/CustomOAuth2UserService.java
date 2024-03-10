package com.zarangzill.zarangzill_back.config.oauth;

import java.util.Collections;

import com.zarangzill.zarangzill_back.login.service.LoginDTO;
import com.zarangzill.zarangzill_back.login.service.LoginService;
import com.zarangzill.zarangzill_back.member.service.MemberDTO;
import com.zarangzill.zarangzill_back.member.service.MemberService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

	@Autowired
	LoginService loginService;
	@Autowired
	MemberService memberService;
	@Autowired
	HttpSession httpSession;
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2UserService<OAuth2UserRequest,OAuth2User> delegate =
				new DefaultOAuth2UserService();

		// 소셜에서 인증받아서 가져온 유저 정보를 담고 있다.
		OAuth2User oAuth2User = delegate.loadUser(userRequest);
		// 어떤 서비스인지(구글, 네이버 등등) -> 로그 찍어보면 naver 혹은 google 이 나온다.
		String registrationId = userRequest.getClientRegistration().getRegistrationId();
		// OAuth2 로그인 진행 시 키가 되는 필드 값, 구글은 sub 네이버는 response 라는 이름을 갖는다.
		String userNameAttributeName = userRequest.getClientRegistration().getProviderDetails()
				.getUserInfoEndpoint().getUserNameAttributeName();

		OAuthAttributes oAuthAttributes = OAuthAttributes.of(registrationId, userNameAttributeName, oAuth2User.getAttributes());
		String email = oAuthAttributes.getEmail();

		if(httpSession.getAttribute("markgChk") != null && "N".equals(findUser(oAuthAttributes)) ){
			String markgChk = httpSession.getAttribute("markgChk").toString();
			createMember(oAuthAttributes,markgChk);
		}

		// 소셜 로그인으로 들어온 이메일과 같은 이메일로 가입된 회원의 실명 + 이메일이 동일한 경우 승인
		httpSession.setAttribute("email",email);
		LoginDTO loginDto = check(oAuthAttributes);
		loginDto.setRole(Role.USER);
		// 로그인 성공하면 세션에 회원 실명 저장
		httpSession.setAttribute("loginDto", loginDto);

		// 해당 계정이 갖고 있는 권한 그대로 주입
		return new DefaultOAuth2User(Collections.singleton(new SimpleGrantedAuthority(loginDto.getRoleKey())),
				oAuthAttributes.getAttributes(),
				oAuthAttributes.getNameAttributeKey());
	}

	// 소셜 로그인 시, 소셜 로그인에 등록된 실명과 이메일로 가입한 회원이 존재하지 않을 경우 null
	private LoginDTO check(OAuthAttributes oAuthAttributes) {
		return loginService.getUserInfo(oAuthAttributes.getEmail())
				.orElseThrow(() -> new OAuth2AuthenticationException(new OAuth2Error("가입된 회원이 아닙니다.")));
	}

	private void createMember(OAuthAttributes oAuthAttributes, String markgChk) {
		MemberDTO memberDto = new MemberDTO();
		memberDto.setName(oAuthAttributes.getName());
		memberDto.setEmail(oAuthAttributes.getEmail());
		memberDto.setSocial_type(oAuthAttributes.getNameAttributeKey());
		memberDto.setMarkgChk(markgChk);
		memberService.createMember(memberDto);
	}

	private String findUser(OAuthAttributes oAuthAttributes) {
		LoginDTO setLoginDTO = new LoginDTO();
		setLoginDTO.setEmail(oAuthAttributes.getEmail());
		LoginDTO loginDTO = loginService.getUserInfo(setLoginDTO);
		if(loginDTO == null){
			return "N";
		}
		return "Y";
	}

}
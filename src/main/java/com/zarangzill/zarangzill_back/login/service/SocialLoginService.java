package com.zarangzill.zarangzill_back.login.service;
/*

import com.fasterxml.jackson.databind.JsonNode;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.env.Environment;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
@Slf4j
public class SocialLoginService {

    private final Environment env;
    private final RestTemplate restTemplate = new RestTemplate();

    public SocialLoginService(Environment env) {
        this.env = env;
    }

    public LoginDTO socialLogin(String code, String registrationId) {
        log.info("======================================================");
        String accessToken = getAccessToken(code, registrationId);
        JsonNode loginDTONode = getloginDTO(accessToken, registrationId);

        LoginDTO loginDTO = new LoginDTO();
        log.info("loginDTO = {}", loginDTO);
        switch (registrationId) {
            case "google": {
                loginDTO.setUserID(loginDTONode.get("id").asText());
                loginDTO.setEmail(loginDTONode.get("email").asText());
                loginDTO.setName(loginDTONode.get("name").asText());
                break;
            } case "kakao": {
                loginDTO.setUserID(loginDTONode.get("id").asText());
                loginDTO.setEmail(loginDTONode.get("kakao_account").get("email").asText());
                loginDTO.setName(loginDTONode.get("kakao_account").get("profile").get("nickname").asText());
                break;
            } case "naver": {
                loginDTO.setUserID(loginDTONode.get("response").get("id").asText());
                loginDTO.setEmail(loginDTONode.get("response").get("email").asText());
                loginDTO.setName(loginDTONode.get("response").get("nickname").asText());
                break;
            } default: {
                throw new RuntimeException("UNSUPPORTED SOCIAL TYPE");
            }
        }
        log.info("id = {}", loginDTO.getUserID());
        log.info("email = {}", loginDTO.getEmail());
        log.info("nickname {}", loginDTO.getName());
        log.info("======================================================");
        return loginDTO;
    }

    private String getAccessToken(String authorizationCode, String registrationId) {
        String clientId = env.getProperty("oauth2." + registrationId + ".client-id");
        String clientSecret = env.getProperty("oauth2." + registrationId + ".client-secret");
        String redirectUri = env.getProperty("oauth2." + registrationId + ".redirect-uri");
        String tokenUri = env.getProperty("oauth2." + registrationId + ".token-uri");

        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("code", authorizationCode);
        params.add("client_id", clientId);
        params.add("client_secret", clientSecret);
        params.add("redirect_uri", redirectUri);
        params.add("grant_type", "authorization_code");

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        HttpEntity entity = new HttpEntity(params, headers);

        ResponseEntity<JsonNode> responseNode = restTemplate.exchange(tokenUri, HttpMethod.POST, entity, JsonNode.class);
        JsonNode accessTokenNode = responseNode.getBody();
        return accessTokenNode.get("access_token").asText();
    }

    private JsonNode getloginDTO(String accessToken, String registrationId) {
        String resourceUri = env.getProperty("oauth2."+registrationId+".resource-uri");

        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + accessToken);
        HttpEntity entity = new HttpEntity(headers);
        return restTemplate.exchange(resourceUri, HttpMethod.GET, entity, JsonNode.class).getBody();
    }
}

//https://accounts.google.com/o/oauth2/auth?client_id=918189902200-adur42hrvf8hnb8imbj059966gfommdh.apps.googleusercontent.com&redirect_uri=http://localhost:8080/api/v1/Login/Google/Action&response_type=code&scope=email%20profile%20openid&access_type=offline

*/

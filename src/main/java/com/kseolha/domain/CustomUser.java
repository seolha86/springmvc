package com.kseolha.domain;

import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;
import java.util.stream.Collectors;

public class CustomUser extends User {
    @Getter
    private MemberVO member;

    public CustomUser(MemberVO vo) {
        super(vo.getUserid(), vo.getUserpw() , vo.getAuths().stream().map(authVO -> new SimpleGrantedAuthority(authVO.getAuth())).collect(Collectors.toList()));
        member = vo;
    }
}

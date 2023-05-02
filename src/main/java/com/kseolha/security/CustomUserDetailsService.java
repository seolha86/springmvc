package com.kseolha.security;

import com.kseolha.domain.CustomUser;
import com.kseolha.domain.MemberVO;
import com.kseolha.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Log4j @Service
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        log.warn(String.format("CustomUserDetailsService.loadUserByUsername(%s)", s));
        MemberVO vo = memberMapper.read(s);
        return vo == null ? null : new CustomUser(vo);
    }
}

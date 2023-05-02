package com.kseolha.mapper;

import com.kseolha.domain.MemberVO;

public interface MemberMapper {
    MemberVO read(String userid);
}

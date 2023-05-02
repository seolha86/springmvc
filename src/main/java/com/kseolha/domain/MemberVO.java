package com.kseolha.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.Date;
import java.util.List;

@Alias("member")
@Data
public class MemberVO {
    private String userid;
    private String userpw;
    private String username;
    private boolean enabled;

    private Date regdate;
    private Date updatedate;

    private List<AuthVO> auths;
}

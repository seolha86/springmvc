package com.kseolha.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("auth")
public class AuthVO {
    private String userid;
    private String auth;
}

package com.kseolha.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/member/")
public class MemberController {
    @GetMapping("login")
    public void login() {}

    @PostMapping("login")
    public void login(HttpServletRequest req) {

    }
}

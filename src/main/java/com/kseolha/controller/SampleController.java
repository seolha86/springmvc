package com.kseolha.controller;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j
@RequestMapping("/sample/")
@AllArgsConstructor
public class SampleController {

    @GetMapping("all")
    public void doAll() {
        log.info("doAll()");
    }

    @GetMapping("member")
    public void doMember() {
        log.info("doMember");
    }

    @GetMapping("admin")
    public void doAdmin() {
        log.info("doAdmin");
    }
}


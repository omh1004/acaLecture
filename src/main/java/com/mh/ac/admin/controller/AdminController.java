package com.mh.ac.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/main")
    public String main() {
        return "admin/main";
    }

    @GetMapping("/teacheradd")
    public String teacheradd() {
        return "admin/teacheradd";
    }

}

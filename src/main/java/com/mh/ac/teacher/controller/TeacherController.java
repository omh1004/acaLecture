package com.mh.ac.teacher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @GetMapping("/hire")
    public String hire(Model model) {
        // 리스트 가져오는 로직
        // model.addAttribute("hireList","");
        return "teacher/hire";
    }
}

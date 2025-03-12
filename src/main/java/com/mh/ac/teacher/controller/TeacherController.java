package com.mh.ac.teacher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @GetMapping("/teainfo")
    public String teainfo(Model model) {
        return "teacher/teaInfo";
    }

}

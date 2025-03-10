package com.mh.ac.instructor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/instructor")
public class instructorController {

    @GetMapping("/hirelist")
    public String hirelist(Model model) {
        return "instructor/hirelist";
    }

    @GetMapping("/hireaddpage")
    public String hireadd(Model model) {
        return "instructor/hireadd";
    }

    @GetMapping("/hireview")
    public String hireview(Model model) {
        return "instructor/hireview";
    }

}

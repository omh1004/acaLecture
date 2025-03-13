package com.mh.ac.teacher.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.teacher.model.dto.LectureMember;
import com.mh.ac.teacher.model.service.TeacherService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/teacher")
public class TeacherController {
    private final TeacherService service;

    @GetMapping("/teainfo")
    public String teainfo(Model model) {
        return "teacher/teaInfo";
    }

    @GetMapping("/mypage")
    public String myPage(Model model){
        // long lemNo = (long)(Math.floor(Math.random()*10))+51;
        long lemNo = 1;
        LectureMember lectureMember = service.getTeacherByNo(lemNo);
        model.addAttribute(lectureMember);
        List<Recruit> myRecruits = service.getMyRecruits(lemNo);
        model.addAttribute(myRecruits);
        return "teacher/mypage";
    }
}

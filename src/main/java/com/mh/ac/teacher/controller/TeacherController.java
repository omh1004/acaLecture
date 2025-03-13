package com.mh.ac.teacher.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mh.ac.instructor.model.dto.SupInfo;
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
        model.addAttribute("lectureMember",lectureMember);
        List<SupInfo> myRecruits = service.getMyRecruits(lemNo);
        model.addAttribute("myRecruits",myRecruits);

        return "teacher/mypage";
    }

    @GetMapping("/cancelhire")
    public String cancelHire(Model model, long no){
        int result = service.cancelHire(no);

        if(result>0){
            String msg = "지원이 취소되었습니다!!";
            model.addAttribute("msg",msg);
        }else{
            String msg = "지원 취소가 진행되지 않았습니다!!";
            model.addAttribute("msg",msg);
        }

        String loc = "/teacher/mypage";
        model.addAttribute("loc",loc);

        return "common/msg";
    }
}

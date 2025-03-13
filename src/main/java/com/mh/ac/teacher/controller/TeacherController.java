package com.mh.ac.teacher.controller;

import com.mh.ac.teacher.model.dto.Teacher;
import com.mh.ac.teacher.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @GetMapping("/hire")
    public String hire(Model model) {
        // 리스트 가져오는 로직
        // model.addAttribute("hireList","");
        return "instructor/hire";
    }

    @GetMapping("/teainfo")
    public String teainfo(Model model) {
        return "teacher/teaInfo";
    }

    @GetMapping("/findTeacherById")
    public ResponseEntity<Boolean> findTeacherById(@RequestParam String id) {
        boolean isSameUserId = teacherService.findTeacherById(id);
        return ResponseEntity.ok(isSameUserId);
    }

    @PostMapping("/teacherMemberend")
    public String insertTeacher(@ModelAttribute Teacher teacher) {
        int result = teacherService.insertTeacher(teacher);
        return result > 0 ? "redirect:/" : "commont/error";
    }

}

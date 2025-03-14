package com.mh.ac.teacher.controller;

import com.mh.ac.teacher.model.dto.Teacher;
import com.mh.ac.teacher.model.service.TeacherService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.teacher.model.dto.LectureMember;

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

    @GetMapping("/mypage")
    public String myPage(Model model){
        // long lemNo = (long)(Math.floor(Math.random()*10))+51;
        long lemNo = 1;
        LectureMember lectureMember = teacherService.getTeacherByNo(lemNo);
        model.addAttribute("lectureMember",lectureMember);
        List<SupInfo> myRecruits = teacherService.getMyRecruits(lemNo);
        model.addAttribute("myRecruits",myRecruits);

        return "teacher/mypage";
    }

    @GetMapping("/cancelhire")
    public String cancelHire(Model model, long no){
        int result = teacherService.cancelHire(no);

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

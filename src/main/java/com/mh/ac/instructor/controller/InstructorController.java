package com.mh.ac.instructor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.instructor.model.service.InstructorService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/instructor")
public class InstructorController {
    private final InstructorService service;

//    @GetMapping("/hirelist")
//    public String hirelist(Model model) { return "instructor/hirelist"; }

    @GetMapping("/hireaddpage")
    public String hireadd(Model model) {
        return "instructor/hireadd";
    }

    @GetMapping("/hireview")
    public String hireview(Model model) {
        return "instructor/hireview";
    }

    @GetMapping("/insinfo")
    public String insinfo(Model model) {
        return "instructor/insInfo";
    }
    
    // @GetMapping("/hire")
    // public String hire(Model model) {
    //     // 리스트 가져오는 로직
    //     // model.addAttribute("hireList","");
    //     return "instructor/hire";
    // }

    // DAO 추가하고 활성화시키기
    @GetMapping("/hire")
    public String hire(Model model, @RequestParam(value = "no", defaultValue = "0") long no){
        System.out.println(no);
        Recruit recruit = service.getRecruitByNo(no);
        model.addAttribute("recruit",recruit);
        return "instructor/hire";
    }

    @GetMapping("/hireteacher")
    public String teacherRecruit(Model model, SupInfo supInfo){
        // System.out.println(supInfo.getSupNo());
        // System.out.println(supInfo.getInterviewDate());
        // System.out.println(supInfo.getInterviewTime());
        // System.out.println(supInfo.getSelectState());
        // System.out.println(supInfo.getLemNo());
        // System.out.println(supInfo.getRecInfoNo());

        int result = service.insertSupInfo(supInfo);

        return "redirect:/"; // index.jsp로 이동
    }
}

package com.mh.ac.instructor.controller;

import com.mh.ac.instructor.model.dto.Instructor;
import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.instructor.model.service.InstructorService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Log4j2
@Controller
@RequestMapping("/instructor")
public class InstructorController {

    @Autowired
    private InstructorService instructorService;

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

    @GetMapping("/findInstructorById")
    public ResponseEntity<Boolean> findInstructorById(@RequestParam String id) {
        boolean isSameUserId = instructorService.findInstructorById(id);
        return ResponseEntity.ok(isSameUserId);
    }

    @PostMapping("/instructorMemberend")
    public String insertInstructor(@ModelAttribute Instructor instructor) {
        int result = instructorService.insertInstructor(instructor);
        return result > 0 ? "redirect:/" : "common/error";
    }

    // DAO 추가하고 활성화시키기
    @GetMapping("/hire")
    public String hire(Model model, @RequestParam(value = "no", defaultValue = "0") long no){
        System.out.println(no);
        Recruit recruit = instructorService.getRecruitByNo(no);
        model.addAttribute("recruit",recruit);
        return "instructor/hire";
    }

    @GetMapping("/hireteacher")
    public String teacherRecruit(Model model, SupInfo supInfo){
        int result = instructorService.insertSupInfo(supInfo);
        
        return "redirect:/"; // index.jsp로 이동
    }
}

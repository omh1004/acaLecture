package com.mh.ac.security.controller;

import com.mh.ac.member.model.dto.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class SecurityController {
    @RequestMapping("/loginsuccess")
    public String loginend(){
        //로그인한 사용자 정보확인하기

        Object loginMember = SecurityContextHolder.getContext().getAuthentication().getPrincipal();


        log.debug("{}",loginMember);


        log.debug("로그인성공");
        return "redirect:/";
    }

    @RequestMapping("/loginfail")
    public String loginfail(Model model){
        log.debug("로그인실패");
        model.addAttribute("msg","로그인실패");
        model.addAttribute("loc","/loginpage");
        return "common/msg";
    }

    @RequestMapping("/loginpage")
    public String loginpage(Model model, String pageId){
        if(pageId.equals("instructor")){
            return "common/instructorLogin";
        }else if(pageId.equals("academy")) {
            return "common/academyLogin";
        }
        return "common/adminLogin";
    }

    @RequestMapping("/enroll")
    public String enroll(Model model, String pageId){
        if (pageId.equals("instructor")){
            return "instructor/insRegister";
        }
        return "teacher/teaRegister";
    }


}

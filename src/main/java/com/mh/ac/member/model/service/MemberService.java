package com.mh.ac.member.model.service;


import com.mh.ac.member.model.dto.Member;

public interface MemberService {
    public Member selectMemberById(String id);
    int saveMember(Member member);
}

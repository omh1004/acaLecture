package com.mh.ac.member.model.service;


import com.mh.ac.member.model.dao.MemberDao;
import com.mh.ac.member.model.dto.Member;
import jakarta.persistence.EntityManager;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

    private MemberDao dao;
    private SqlSession session;

    private EntityManager entityManager;
    @Autowired
    public MemberServiceImpl(MemberDao dao,
                                                         SqlSession session) {
        this.dao = dao;
        this.session = session;

        this.entityManager=entityManager;
    }

    @Override
    public Member selectMemberById(String id) {

        return dao.findMemberById(session,id);
    }

    @Override
    public int saveMember(Member member) {

        return dao.saveMember(session,member);
    }
}

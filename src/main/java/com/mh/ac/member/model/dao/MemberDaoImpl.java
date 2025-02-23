package com.mh.ac.member.model.dao;


import com.mh.ac.member.model.dto.Member;
import org.apache.ibatis.session.SqlSession;

//@Repository(value = "memberdao")
public class MemberDaoImpl implements MemberDao {

    @Override
    public Member findMemberById(SqlSession session, String id) {
        Member member = session.selectOne("member.findMemberById", id);
        return member;
    }

    public int saveMember(SqlSession session, Member member) {

        return session.insert("member.saveMember", member);
    }

}

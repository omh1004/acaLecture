package com.mh.ac.member.model.dao;


import com.mh.ac.member.model.dto.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDao {
    Member findMemberById(SqlSession session, String id);

    int saveMember(SqlSession session, Member member);
}

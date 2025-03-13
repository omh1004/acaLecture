package com.mh.ac.teacher.model.dao;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.teacher.model.dto.LectureMember;
import com.mh.ac.teacher.model.dto.Teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

public class TeacherDaoImpl implements TeacherDao {

    @Override
    public Teacher findTeacherById(SqlSession session, String username) {
        return null;
    }

    @Override
    public LectureMember getTeacherByNo(SqlSession session, long no){
        return session.selectOne("getTeacherByNo",no);
    }

    @Override
    public List<Recruit> getMyRecruits(SqlSession session, long no){
        return session.selectList("getMyRecruits",no);
    }
}

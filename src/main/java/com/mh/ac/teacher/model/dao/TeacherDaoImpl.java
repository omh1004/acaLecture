package com.mh.ac.teacher.model.dao;

import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.teacher.model.dto.LectureMember;
import com.mh.ac.teacher.model.dto.Teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
    public List<SupInfo> getMyRecruits(SqlSession session, long no){
        return session.selectList("getMyRecruits",no);
    }

    @Override
    public int cancelHire(SqlSession sessoin, long no){
        return sessoin.delete("cancelHire",no);
    }

    @Override
    public int insertTeacher(SqlSession session, Teacher teacher) {
        return session.insert("teacher.insertTeacher", teacher);
    }
}

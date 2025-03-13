package com.mh.ac.teacher.model.dao;

import com.mh.ac.teacher.model.dto.Teacher;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

public class TeacherDaoImpl implements TeacherDao {

    @Override
    public Teacher findTeacherById(SqlSession session, String id) {
        return session.selectOne("teacher.findTeacherById", id);
    }

    @Override
    public int insertTeacher(SqlSession session, Teacher teacher) {
        return session.insert("teacher.insertTeacher", teacher);
    }

}

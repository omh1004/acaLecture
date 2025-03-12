package com.mh.ac.teacher.model.dao;

import com.mh.ac.teacher.model.dto.Teacher;
import org.apache.ibatis.session.SqlSession;

public interface TeacherDao {

    Teacher findTeacherById(SqlSession session, String username);

}

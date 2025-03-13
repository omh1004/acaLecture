package com.mh.ac.teacher.model.dao;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.teacher.model.dto.LectureMember;
import com.mh.ac.teacher.model.dto.Teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public interface TeacherDao {
    Teacher findTeacherById(SqlSession session, String username);
    public LectureMember getTeacherByNo(SqlSession session, long no);
    List<Recruit> getMyRecruits(SqlSession session, long no);

}

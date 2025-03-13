package com.mh.ac.teacher.model.dao;

import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.teacher.model.dto.LectureMember;
import com.mh.ac.teacher.model.dto.Teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public interface TeacherDao {
    Teacher findTeacherById(SqlSession session, String username);
    LectureMember getTeacherByNo(SqlSession session, long no);
    List<SupInfo> getMyRecruits(SqlSession session, long no);
    int cancelHire(SqlSession session, long no);
}

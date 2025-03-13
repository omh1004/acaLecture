package com.mh.ac.teacher.model.dao;

import com.mh.ac.instructor.model.dto.Recruit;
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
        List<SupInfo> a = session.selectList("getMyRecruits",no);
        System.out.println(a);
        return a;
    }

    @Override
    public int cancelHire(SqlSession sessoin, long no){
        return sessoin.delete("cancelHire",no);
    }
}

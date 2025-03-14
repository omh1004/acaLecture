package com.mh.ac.teacher.model.service;

import com.mh.ac.teacher.model.dao.TeacherDao;
import com.mh.ac.teacher.model.dto.Teacher;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.teacher.model.dto.LectureMember;

@Service
public class TeacherServiceImpl implements TeacherService {

  private final TeacherDao teacherDao;
  private final SqlSession session;

  public TeacherServiceImpl(TeacherDao teacherDao, SqlSession session) {
    this.teacherDao = teacherDao;
    this.session = session;
  }

  @Override
  public LectureMember getTeacherByNo(long no){
    return teacherDao.getTeacherByNo(session, no);
  }

  @Override
  public List<SupInfo> getMyRecruits(long no){
    return teacherDao.getMyRecruits(session, no);
  }

  @Override
  public int cancelHire(long no){
    return teacherDao.cancelHire(session ,no);
  }

  @Override
  public boolean findTeacherById(String id) {
      Teacher teac = teacherDao.findTeacherById(session, id);
      boolean flag = false;
      if (teac != null) {
          flag = true;
      }
      return flag;
  }

  @Override
  public int insertTeacher(Teacher teacher) {
      return teacherDao.insertTeacher(session, teacher);
  }

    @Override
    public Teacher searchTeacherById(String id) {
        return teacherDao.findTeacherById(session, id);
    }
}

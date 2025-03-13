package com.mh.ac.teacher.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;
import com.mh.ac.teacher.model.dao.TeacherDao;
import com.mh.ac.teacher.model.dto.LectureMember;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TeacherServiceImpl implements TeacherService{
  private final SqlSession session;
  private final TeacherDao dao;

  @Override
  public LectureMember getTeacherByNo(long no){
    return dao.getTeacherByNo(session, no);
  }

  @Override
  public List<SupInfo> getMyRecruits(long no){
    return dao.getMyRecruits(session, no);
  }

  @Override
  public int cancelHire(long no){
    return dao.cancelHire(session ,no);
  }
}

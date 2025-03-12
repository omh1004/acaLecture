package com.mh.ac.instructor.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.mh.ac.instructor.model.dao.InstructorDAO;
import com.mh.ac.instructor.model.dto.Recruit;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InstructorServiceImpl implements InstructorService{
  private final InstructorDAO dao;
  private final SqlSession session;

  @Override
  public Recruit getRecruitByNo(long no){
    Recruit result = dao.getRecruitByNo(session ,no);
    return result;
  }
}

package com.mh.ac.instructor.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.mh.ac.instructor.model.dao.InstructorDao;
import com.mh.ac.instructor.model.dto.Recruit;
import com.mh.ac.instructor.model.dto.SupInfo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InstructorServiceImpl implements InstructorService{
  private final InstructorDao dao;
  private final SqlSession session;

  @Override
  public Recruit getRecruitByNo(long no){
    Recruit result = dao.getRecruitByNo(session ,no);
    return result;
  }

  @Override
  public int insertSupInfo(SupInfo supInfo){
    int result = dao.insertSupInfo(session ,supInfo);

    return result;
  }
}

package com.mh.ac.security.model.service;


import com.mh.ac.teacher.model.dao.TeacherDao;
import com.mh.ac.teacher.model.dto.Teacher;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@RequiredArgsConstructor
public class SecurityLoginService implements UserDetailsService {

    private final TeacherDao teacherDao;
    private final SqlSession sqlSession;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       Teacher findTeacher =  teacherDao.findTeacherById(sqlSession,username);
       //패스워드는 시큐리티가 해준다.
       return findTeacher;
    }
}

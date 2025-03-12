package com.mh.ac.security.model.service;


import com.mh.ac.admin.model.dao.AdminDao;
import com.mh.ac.admin.model.dto.Admin;
import com.mh.ac.instructor.model.dao.InstructorDao;
import com.mh.ac.instructor.model.dto.Instructor;
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
    private final InstructorDao instructorDao;
    private final AdminDao adminDao;
    private final SqlSession sqlSession;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Teacher findTeacher =  teacherDao.findTeacherById(sqlSession,username);
        Instructor findInstructor = instructorDao.findInstructorById(sqlSession,username);
        Admin findAdmin = adminDao.findAdminById(sqlSession,username);

        //패스워드는 시큐리티가 해준다.
        if (findTeacher != null){
            return findTeacher;
        } else if (findInstructor != null){
            return findInstructor;
        } else if (findAdmin != null) {
            return findAdmin;
        }

        return null;

    }
}

package com.mh.ac.security.model.service;


import com.mh.ac.member.model.dao.MemberDao;
import com.mh.ac.member.model.dto.Member;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@RequiredArgsConstructor
public class SecurityLoginService implements UserDetailsService {

    private final MemberDao memberDao;
    private final SqlSession sqlSession;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       Member findMember =  memberDao.findMemberById(sqlSession,username);
       //패스워드는 시큐리티가 해준다.
       return findMember;
    }
}

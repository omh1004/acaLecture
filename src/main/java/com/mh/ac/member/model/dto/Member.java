package com.mh.ac.member.model.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Member implements Serializable , UserDetails {

    private long acdno;
    private String acdid;
    private String password;
    private String acdname;
    private String opname;
    private String email;
    private String acstate;
    private String acsubj;




    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auth = new ArrayList<>();

       // if(acdid.equals("admin"))
            auth.add(new SimpleGrantedAuthority("admin"));
       // auth.add(new SimpleGrantedAuthority("user"));

        return auth;
    }

    @Override
    public String getUsername() {
        return this.acdid;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}

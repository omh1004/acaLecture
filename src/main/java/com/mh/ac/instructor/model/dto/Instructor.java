package com.mh.ac.instructor.model.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Instructor implements Serializable, UserDetails {

    private Integer acdNo;
    private String acdId;
    private String password;
    private String email;
    private String acdName;
    private String opName;
    private String acState;
    private String acsubj;


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auth = new ArrayList<>();

        if(acdId.equals("admin")) auth.add(new SimpleGrantedAuthority("admin"));
        auth.add(new SimpleGrantedAuthority("user"));

        return auth;
    }

    @Override
    public String getUsername() {
        return this.acdId;
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

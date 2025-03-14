package com.example.service;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class UserService {
	private JdbcTemplate jdbcTemplate;
	private BCryptPasswordEncoder passwordEncoder;
	
    public UserService(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        this.passwordEncoder = new BCryptPasswordEncoder(); // Use BCrypt for password encoding
    }
    
    public void registerUser(com.example.model.User user) {
        String encodedPassword = passwordEncoder.encode(user.getPassword());

        // Insert the user into the `users` table
        String sql = "INSERT INTO users (username, password, enabled) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getUsername(), encodedPassword, user.isEnabled());

        // Optionally, you can assign a default role to the user
        String roleSql = "INSERT INTO authorities (username, authority) VALUES (?, 'ROLE_USER')";
        jdbcTemplate.update(roleSql, user.getUsername());
        
        System.out.println("User registered: " + user.getUsername());
    }
	
}

package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.Admin;

public class AdminDao {
public AdminDao(Connection conn) {
		super();
		this.conn = conn;
	}

private Connection conn;

public boolean register(Admin a) {
	boolean f = false;

	try {
		String sql = "insert into user(name,email,password) values(?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, a.getEmail());
		ps.setString(2, a.getPassword());
		int i = ps.executeUpdate();
		if (i == 1) {
			f = true;
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return f;
}
public Admin login(String em,String psw) {
	Admin a = null;
	try {
		String sql = "select * from admin where email=? and password=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, em);
		ps.setString(2, psw);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			a = new Admin();
			a.setId(rs.getInt(1));
			a.setEmail(rs.getString(2));
			a.setPassword(rs.getString(3));
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return a;
}
}

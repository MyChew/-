package com.springbook.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.user.UserVO;

//DAO(Data Access Object)
@Repository
public class UserDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	// SQL
	private final String USER_GET = "SELECT * FROM USERS WHERE ID=? AND PASSWORD = ?";
	private final String USER_INSERT = "insert into users(id,password,NAME,age,marriage,height,academicBackground,job,money,religion,gender) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
	private final String USER_LIST = "select * from users order by id desc";
	private final String USER_UPDATE = "update users set PASSWORD = ? , NAME = ? , age = ? , marriage = ? , height = ? , academicBackground = ? , job = ? , money = ? , religion =?, Gender=? WHERE id = ? ";

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// ȸ������
	public void getinsertUser(UserVO vo) {
		System.out.println("===> Spring JDBC�� ȸ������ ��� ó��");
		jdbcTemplate.update(USER_INSERT, vo.getId(), vo.getPassword(), vo.getName(), vo.getAge(), vo.getMarriage(),
				vo.getHeight(), vo.getAcademicBackground(), vo.getJob(), vo.getMoney(), vo.getReligion() , vo.getGender());
	}

	// �α���
	public UserVO getUser(UserVO vo) {
		UserVO user = null;
		try {
			System.out.println("===> JDBC�� getUser() ��� ó��");
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(USER_GET);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new UserVO();
				user.setId(rs.getString("ID"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setName(rs.getString("NAME"));				
				user.setAge(rs.getInt("Age"));
				user.setMarriage(rs.getString("Marriage"));
				user.setHeight(rs.getString("Height"));
				user.setAcademicBackground(rs.getString("AcademicBackground"));
				user.setJob(rs.getString("Job"));
				user.setMoney(rs.getInt("Money"));
				user.setReligion(rs.getString("Religion"));
				user.setGender(rs.getString("GENDER"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return user;
	}

	// ȸ��Ż��
	public void deleteUser(UserVO vo) {
		System.out.println("===> Spring JDBC�� deleteBoard() ��� ó��");
		// jdbcTemplate.update(USER_DELETE, vo.getSeq());
	}

	// ���������� ����
	public void getupdateUser(UserVO vo) {
		System.out.println("===> Spring JDBC�� updateUser() ��� ó��");
		jdbcTemplate.update(USER_UPDATE, vo.getPassword(), vo.getName(), vo.getAge(), vo.getMarriage(),
				vo.getHeight(), vo.getAcademicBackground(), vo.getJob(), vo.getMoney(), vo.getReligion(),vo.getGender(),vo.getId());
	}

	// �� ��� ��ȸ
	public List<UserVO> getUserList(UserVO vo) {
		System.out.println("===> Spring JDBC��  USER_LIST ��� ó��");
		return jdbcTemplate.query(USER_LIST, new UserRowmapper());
	}
}

class UserRowmapper implements RowMapper<UserVO> {
	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserVO user = new UserVO();
		user.setId(rs.getString("ID"));
		user.setPassword(rs.getString("PASSWORD"));
		user.setName(rs.getString("NAME"));
		user.setAge(rs.getInt("AGE"));
		user.setMarriage(rs.getString("MARRIAGE"));
		user.setHeight(rs.getString("HEIGHT"));
		user.setAcademicBackground(rs.getString("ACADEMICBACKGROUND"));
		user.setJob(rs.getString("JOB"));
		user.setMoney(rs.getInt("MONEY"));
		user.setReligion(rs.getString("RELIGION"));
		user.setGender(rs.getString("GENDER"));
		return user;
	}
}
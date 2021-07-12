package com.springbook.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;




@Repository("test1DAO")
public class Test1DAO {

	// JDBC ���� ����
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
		
		private final String TEST1_INSERT = 
				"insert into wannabe_test(seq, name, age, marriage, height, academicBackground, job, money, religion)"
				+ "values((select ifnull(max(seq), 0)+1 from wannabe_test w),?,?,?,?,?,?,?,?)";
		private final String TEST1_DELETE = "delete from wannabe_test where seq=?";
		private final String TEST1_List = "select * from wannabe_test order by seq desc";
		
		
		public void insertTest1(Test1VO vo) {
			System.out.println("===> JDBC�� insertTest1() ��� ó��");
			try {
				conn = JDBCUtil.getConnection();
				pstmt = conn.prepareStatement(TEST1_INSERT);
				pstmt.setString(1, vo.getName());
				pstmt.setString(2, vo.getAge());
				pstmt.setString(3, vo.getMarriage());
				pstmt.setString(4, vo.getHeight());
				pstmt.setString(5, vo.getAcademicBackground());
				pstmt.setString(6, vo.getJob());
				pstmt.setString(7, vo.getMoney());
				pstmt.setString(8, vo.getReligion());
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(pstmt, conn);
			}
		}
		// �� ����
		public void deleteTest1(Test1VO vo) {
			System.out.println("===> JDBC�� deleteTest1() ��� ó��");
			try {
				conn = JDBCUtil.getConnection();
				pstmt = conn.prepareStatement(TEST1_DELETE);
				pstmt.setInt(1, vo.getSeq());
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(pstmt, conn);
			}
		}

		// �� �� ��ȸ
		public List<Test1VO> getTest1List(Test1VO vo) {
			System.out.println("===> JDBC�� getTest1List() ��� ó��");
			List<Test1VO> test1List = new ArrayList<Test1VO>();
			try {
				conn = JDBCUtil.getConnection();
				pstmt = conn.prepareStatement(TEST1_List);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					Test1VO test1 = new Test1VO();
					test1.setSeq(rs.getInt("seq"));
					test1.setName(rs.getString("name"));
					test1.setAge(rs.getString("age"));
					test1.setMarriage(rs.getString("marriage"));
					test1.setHeight(rs.getString("height"));
					test1.setAcademicBackground(rs.getString("academicBackground"));
					test1.setJob(rs.getString("job"));
					test1.setMoney(rs.getString("money"));
					test1.setReligion(rs.getString("religion"));
					test1List.add(test1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(rs, pstmt, conn);
			}
			return test1List;
		}
	}

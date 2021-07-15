package com.springbook.biz.test2.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springbook.biz.common.JDBCUtil;
import com.springbook.biz.test2.Test2VO;

@Repository("test2DAO")
public class Test2DAO {

	// JDBC 관련 변수
			private Connection conn = null;
			private PreparedStatement pstmt = null;
			private ResultSet rs = null;
			
			private final String TEST2_INSERT = 
					"insert into style_test(seq, name, outsideActivities, diligence, plannedness, friendly, consideration, empathy, externalFactors, drinking, smoking)"
					+ "values((select ifnull(max(seq), 0)+1 from style_test q),?,?,?,?,?,?,?,?,?,?)";
			private final String TEST2_DELETE = "delete from style_test where seq=?";
			private final String TEST2_List = "select * from style_test order by seq desc";
			
			public void insertTest2(Test2VO vo) {
				System.out.println("===> JDBC로 insertTest2() 기능 처리");
				try {
					conn = JDBCUtil.getConnection();
					pstmt = conn.prepareStatement(TEST2_INSERT);
					pstmt.setString(1, vo.getName());
					pstmt.setInt(2, vo.getOutsideActivities());
					pstmt.setInt(3, vo.getDiligence());
					pstmt.setInt(4, vo.getPlannedness());
					pstmt.setInt(5, vo.getFriendly());
					pstmt.setInt(6, vo.getConsideration());
					pstmt.setInt(7, vo.getEmpathy());
					pstmt.setInt(8, vo.getExternalFactors());
					pstmt.setInt(9, vo.getDrinking());
					pstmt.setInt(10, vo.getSmoking());
					
					pstmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JDBCUtil.close(pstmt, conn);
				}
			}
			// 글 삭제
			public void deleteTest2(Test2VO vo) {
				System.out.println("===> JDBC로 deleteTest2() 기능 처리");
				try {
					conn = JDBCUtil.getConnection();
					pstmt = conn.prepareStatement(TEST2_DELETE);
					pstmt.setInt(1, vo.getSeq());
					pstmt.executeUpdate();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JDBCUtil.close(pstmt, conn);
				}
			}

			// 글 상세 조회
			public List<Test2VO> getTest2List(Test2VO vo) {
				System.out.println("===> JDBC로 getTest2List() 기능 처리");
				List<Test2VO> test2List = new ArrayList<Test2VO>();
				try {
					conn = JDBCUtil.getConnection();
					pstmt = conn.prepareStatement(TEST2_List);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						Test2VO test2 = new Test2VO();
						test2.setSeq(rs.getInt("seq"));
						test2.setName(rs.getString("name"));
						test2.setOutsideActivities(rs.getInt("outsideActivities"));
						test2.setDiligence(rs.getInt("diligence"));
						test2.setPlannedness(rs.getInt("plannedness"));
						test2.setFriendly(rs.getInt("friendly"));
						test2.setConsideration(rs.getInt("consideration"));
						test2.setEmpathy(rs.getInt("empathy"));
						test2.setExternalFactors(rs.getInt("externalFactors"));
						test2.setDrinking(rs.getInt("drinking"));
						test2.setSmoking(rs.getInt("smoking"));
						test2List.add(test2);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					JDBCUtil.close(rs, pstmt, conn);
				}
				return test2List;
			}
		}

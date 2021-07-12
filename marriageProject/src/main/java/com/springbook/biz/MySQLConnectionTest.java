package com.springbook.biz;



import java.sql.Connection;

import java.sql.DriverManager;



import org.junit.Test;



public class MySQLConnectionTest {

	private static final String DRIVER = "com.mysql.jdbc.Driver";

	private static final String URL = "jdbc:mysql://220.89.64.89:3306/testDB";

	private static final String USER ="root";

	private static final String PW = "1234";

	

	@Test

	public void testConnection() throws Exception{

		Class.forName(DRIVER);

		try (Connection con = DriverManager.getConnection(URL, USER, PW))	{

			System.out.println(con);

			

		}catch(Exception e){

			System.err.println(e);

		}

	}

}


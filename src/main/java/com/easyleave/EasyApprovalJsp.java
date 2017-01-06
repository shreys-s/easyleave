package com.easyleave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EasyApprovalJsp {
	public static ResultSet test() throws SQLException{
		Connection con=DBConnection.getConnection();
		Statement stm=con.createStatement();
		PreparedStatement p=con.prepareStatement("select emp_leave.EmpID, emp_leave.leave_id, emp_leave.leavetype, emp_register.EmpName, emp_leave.startdate, emp_leave.enddate, emp_leave.comment from emp_leave join emp_register on  emp_leave.EmpID=emp_register.EmpID where emp_leave.status=?");
		p.setString(1, "Pending");
		ResultSet rs=p.executeQuery();
		con.close();
		return rs;
		
	}

}

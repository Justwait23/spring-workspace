package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import dto.Employee;

public class EmployeeDAO {
		
	
	public List<Employee> getEmpByDept(int deptId){
		String sql = "SELECT * FROM employees WHERE department_id = ?";
		
		List<Employee> employees = new ArrayList<>();
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		){
			pstmt.setInt(1, deptId);
			try (ResultSet rs = pstmt.executeQuery()){
				while (rs.next()) {
					int empId = rs.getInt("employee_id");
					String empName = rs.getString("first_name");
					int empDeptId = rs.getInt("department_id");
					
					employees.add(new Employee(empId, empName, empDeptId));
				}
			}
			
			return employees.isEmpty() ? null : employees;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}

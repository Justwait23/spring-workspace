package dto;

public class Employee {
	
	private Integer employee_id;
	private String first_name;
	private Integer department_id;
	
	public Employee() {}
	
	public Employee(Integer employee_id, String first_name, Integer department_id) {
		this.employee_id = employee_id;
		this.first_name = first_name;
		this.department_id = department_id;
	}

	public Integer getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(Integer employee_id) {
		this.employee_id = employee_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public Integer getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(Integer department_id) {
		this.department_id = department_id;
	}
	
	
	
}

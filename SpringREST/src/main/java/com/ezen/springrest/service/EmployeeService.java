package com.ezen.springrest.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.springrest.dto.EmployeeDTO;

public interface EmployeeService {
	
	List<EmployeeDTO> list();
	
	List<EmployeeDTO> getRandomEmployees(List<EmployeeDTO> allEmployees, int count);

}

package com.ezen.springrest.service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springrest.dto.EmployeeDTO;
import com.ezen.springrest.mapper.EmployeeMapper;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	EmployeeMapper employeeMapper;
	
	@Override
	public List<EmployeeDTO> list() {
		return employeeMapper.getAll();
	}

	@Override
	public List<EmployeeDTO> getRandomEmployees(List<EmployeeDTO> allEmployees, int count) {
		Collections.shuffle(allEmployees);
		
		return allEmployees.subList(0, 10);
	}
	
	

}

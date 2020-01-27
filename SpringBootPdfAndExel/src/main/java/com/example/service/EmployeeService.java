package com.example.service;

import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Pageable;

import com.example.model.Employee;

public interface EmployeeService {

	List<Employee> getAllEmployees();

	boolean createExel(List<Employee> employees, ServletContext context, HttpServletRequest request,
			HttpServletResponse response);

	boolean createPdf(List<Employee> employees, ServletContext context, HttpServletRequest request,
			HttpServletResponse response);
	
	List<Employee> search(String searchText);

}

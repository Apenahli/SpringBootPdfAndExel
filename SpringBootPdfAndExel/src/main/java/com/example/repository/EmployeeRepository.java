package com.example.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.example.model.Employee;

@Repository
public interface EmployeeRepository extends CrudRepository <Employee, Integer> {
	
	
	@Transactional
	@Modifying
	@Query(value = "SELECT * FROM test4.employee where first_name like '%' :searchText '%' or last_name like '%' :searchText '%' ", nativeQuery = true)
	List<Employee> search(@Param("searchText") String searchText);


}

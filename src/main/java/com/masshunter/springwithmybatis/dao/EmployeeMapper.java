package com.masshunter.springwithmybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.masshunter.springwithmybatis.model.Employee;
import com.masshunter.springwithmybatis.util.MyBatisUtil;

@Repository
public class EmployeeMapper {

	public List<Employee> getAllEmployees(){
		
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Employee> employees = session.selectList("getAllEmployees");
		session.commit();
		session.close();
		
		return employees;
	}
	
	public void saveEmployee(Employee employee) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertEmployee", employee);
		session.commit();
		session.close();
	}
	
	public void deleteEmployee(int employeeId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteEmployee", employeeId);
		session.commit();
		session.close();
	}
	
	public Employee getEmployee(int employeeId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Employee emp = (Employee) session.selectOne("getEmployee", employeeId);
		session.commit();
		session.close();
		
		return emp;
	}
	
	public void editEmployee(Employee employee) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.update("editEmployee", employee);
		session.commit();
		session.close();
	}
}

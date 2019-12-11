package com.masshunter.springwithmybatis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.masshunter.springwithmybatis.dao.EmployeeMapper;
import com.masshunter.springwithmybatis.model.Employee;

@Controller
public class HomeController {

	@Autowired
	EmployeeMapper mapper;
	
	
	@RequestMapping("/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping("/employees")
	public ModelAndView employeeList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("employees");
		
		List<Employee> employees = mapper.getAllEmployees();
		
		mv.addObject("employees", employees);
		
		return mv;
	}
	
	@GetMapping("/createEmployee")
	public ModelAndView createEmployee() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createEmployee");
		mv.addObject("employee", new Employee());
		
		return mv;
	}
	
	@PostMapping("/createEmployee")
	public ModelAndView createEmployee(@ModelAttribute("employee") Employee employee) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/employees");
		
		mapper.saveEmployee(employee);

		return mv;
	}
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId") int employeeId) {
		
		mapper.deleteEmployee(employeeId);
		
		return "redirect:/employees";
	}
	
	@GetMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam("employeeId") int employeeId) {
		
		ModelAndView mv = new ModelAndView();
		
		Employee emp = mapper.getEmployee(employeeId);
		
		if(emp == null) {
			mv.setViewName("redirect:/employees");
		} else {
			mv.setViewName("editEmployee");
			mv.addObject("employee", emp);
		}
		
		return mv;
	}
	
	@PostMapping("/editEmployee")
	public ModelAndView editEmployee(@ModelAttribute("employee") Employee emp) {
		
		ModelAndView mv = new ModelAndView();
		mapper.editEmployee(emp);
		
		mv.setViewName("redirect:/employees");
		
		return mv;
	}
}

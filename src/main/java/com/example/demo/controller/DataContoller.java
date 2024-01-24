package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.beans.Student;
import com.example.demo.dao.StudentRepo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class DataContoller {
	
	
	@Autowired
	StudentRepo sr;
	
	@RequestMapping("/form")
	public String register()
	{
		
		return "form";
	}
    @PostMapping("/submit")
    	public String submit(Student s)
    	{
    		System.out.println(s.getId());
    		System.out.println(s.getFname());
    		System.out.println(s.getLname());
    		System.out.println(s.getEmailID());
    		System.out.println(s.getMobNo());
    		System.out.println(s.getPassword());   		
    		sr.save(s);    	
    		return "redirect:/show";   		
    	}
    	
    @GetMapping("/show")
    public List<Student> show(HttpServletRequest req , HttpServletResponse res) {
    	
    	List<Student> list = new ArrayList<>();
    	for(Student std : sr.findAll())
    	{
    		list.add(std);
    	}
    	
    	HttpSession session = req.getSession();
    	session.setAttribute("students", list);
		return list;
       
    }
    
    @PostMapping("/deleteAction")
    public String deleteAction(int id)
    {
    	
           sr.deleteById(id);
           System.out.println("Record Deleted");
           
    	return "redirect:/show";
    } 
    
    @RequestMapping("/editAction")
    public String editAction( int id, HttpSession session) {
        Optional<Student> data = sr.findById(id);
        session.setAttribute("studentToEdit", data.orElse(null));

        return "editAction";
    }
    
    @PostMapping("/editsubmit")
    public String editsubmit(@RequestParam int id, Student beforedata) {
        Optional<Student> existingStudentOptional = sr.findById(id);

        if (existingStudentOptional.isPresent()) {
            Student existingStudent = existingStudentOptional.get();

            // Update existing data with new values
            existingStudent.setFname(beforedata.getFname());
            existingStudent.setLname(beforedata.getLname());
            existingStudent.setEmailID(beforedata.getEmailID());
            existingStudent.setMobNo(beforedata.getMobNo());
            existingStudent.setPassword(beforedata.getPassword());

            // Save the updated data
            sr.save(existingStudent);

            return "redirect:/show";
        } else {
            // Handle the case when no student with the given id is found
           
            return "form";
        }
    
    }
}

   
    


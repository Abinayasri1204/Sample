package com.example.Student1.Controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.Student1.Model.StudentModel;
import com.example.Student1.Repository.StudentRepository;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository repo;

    // Login page
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String doLogin(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("User".equals(username) && "#User12".equals(password)) {
            return "redirect:/home";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    // Home page
    @GetMapping("/home")
    public String home() {
        return "index";
    }

    // Submit student data
    @PostMapping("/submit")
    public String submit(StudentModel student) {
        repo.save(student);
        return "redirect:/students";
    }

    // View all students
    @GetMapping("/students")
    public String viewStudents(HttpServletRequest request) {
        List<StudentModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "view";
    }

    // Edit student
    @GetMapping("/students/edit/{id}")
    public String editStudent(@PathVariable int id, HttpServletRequest request) {
        StudentModel student = repo.findById(id)
            .orElseThrow(() -> new IllegalArgumentException("Invalid id: " + id));
        request.setAttribute("student", student); 
        return "edit"; 
    }

    // Update student
    @PostMapping("/students/update")
    public String updateStudent(@ModelAttribute StudentModel student) {
        repo.save(student); 
        return "redirect:/students";
    }

    // Delete student
    @GetMapping("/students/delete/{id}")
    public String deleteStudent(@PathVariable int id) {
        repo.deleteById(id);
        return "redirect:/students";
    }
}

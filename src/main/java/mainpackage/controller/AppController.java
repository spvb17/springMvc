package mainpackage.controller;

import mainpackage.entity.Student;
import mainpackage.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AppController
{
    @Autowired
    private StudentService studentService;

    @RequestMapping("/")
    public String showAllStudents(Model model)
    {
        List<Student> allStudents = studentService.getStudents();
        model.addAttribute("allStudsAttribute", allStudents);
        return "all-students-view";
    }

    @RequestMapping("/addStudent")
    public String addNewStudent(Model model)
    {
        Student student = new Student();
        model.addAttribute("studentAttribute", student);
        return "student-info-view";
    }

    @RequestMapping("/saveStudent")
    public String saveNewStudent(@ModelAttribute("studentAttribute") Student student)
    {
        studentService.saveStudent(student);
        return "redirect:/";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(@RequestParam("studentId") int id, Model model)
    {
        Student student = studentService.getStudent(id);
        model.addAttribute("studentAttribute", student);
        return "student-info-view";
    }
}

package mainpackage.service;

import mainpackage.entity.Student;

import java.util.List;

public interface StudentService
{
    public List<Student> getStudents();

    public void saveStudent(Student student);

    public Student getStudent(int id);

    public void deleteStudent(int id);
}

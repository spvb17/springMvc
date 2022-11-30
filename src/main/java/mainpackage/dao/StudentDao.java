package mainpackage.dao;

import mainpackage.entity.Student;

import java.util.List;

public interface StudentDao
{
    public List<Student> getStudents();

    public void saveStudent(Student student);

    public Student getStudent(int id);
}

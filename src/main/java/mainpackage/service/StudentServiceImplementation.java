package mainpackage.service;

import mainpackage.dao.StudentDao;
import mainpackage.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentServiceImplementation implements StudentService
{
    @Autowired
    private StudentDao studentDao;

    @Transactional
    @Override
    public List<Student> getStudents() {
        return studentDao.getStudents();
    }

    @Transactional
    @Override
    public void saveStudent(Student student) {
        studentDao.saveStudent(student);
    }
}

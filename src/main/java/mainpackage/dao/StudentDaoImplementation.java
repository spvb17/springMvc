package mainpackage.dao;

import mainpackage.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class StudentDaoImplementation implements StudentDao
{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Student> getStudents()
    {
        Session session = sessionFactory.getCurrentSession();
        List<Student> allStudents = session.createQuery("from Student", Student.class).getResultList();
        return allStudents;
    }

    @Override
    public void saveStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(student);
    }

    @Override
    public Student getStudent(int id)
    {
        Session session = sessionFactory.getCurrentSession();
        Student student = session.get(Student.class, id);
        return student;
    }

    @Override
    public void deleteStudent(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Student> query = session.createQuery("delete from Student where id=:studentId");
        query.setParameter("studentId", id);
        query.executeUpdate();
    }
}

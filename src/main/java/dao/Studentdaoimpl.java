package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import model.Student;

public class Studentdaoimpl implements Studentdao {
	
	
	SessionFactory sessionfactory;



	/**
	 * @return the sessionfactory
	 */
	public SessionFactory getSessionfactory() {
		return sessionfactory;
	}

	/**
	 * @param sessionfactory the sessionfactory to set
	 */
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	@Override
	public void create(Student student) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		session.beginTransaction();
		session.persist(student);
		session.getTransaction().commit();
		System.out.println("object persisted");

	}

	@SuppressWarnings("unchecked")
	@Override

	public List<Student> getStudent() {
	
		Session session = sessionfactory.openSession();
		session.beginTransaction();
	
		String que = "FROM Student";
		Query query=session.createQuery(que);
		List<Student> list=query.list();
		return  list;
		//return sessionfactory.openSession().createQuery("From Student").list();

	}
	@Override
	public Student getStudentbyId(int id) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		session.beginTransaction();
		Student stu = (Student) session.load(Student.class, id);
		
		return stu;
	}

	@Override
	public void update(Student student) {
		// TODO Auto-generated method stub
		//System.out.println(student);
		Session session = sessionfactory.openSession();
		session.beginTransaction();
		session.update(student);
		session.getTransaction().commit();
		System.out.println("Details Updated");
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

		Session session = sessionfactory.openSession();
		session.beginTransaction();
		Student stu = (Student) session.load(Student.class, id);
		session.delete(stu);
		session.getTransaction().commit();
		System.out.println("object deleted");
	}


}

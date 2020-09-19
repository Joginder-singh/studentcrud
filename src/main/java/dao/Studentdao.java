package dao;

import java.util.List;

import model.Student;

public interface Studentdao {
	public void create(Student student);
	public Student getStudentbyId(int id);
	public List<Student> getStudent();
	public void delete(int id);
	public void update(Student student);

}

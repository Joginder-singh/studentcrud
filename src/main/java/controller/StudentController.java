package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.Studentdao;
import dao.Studentdaoimpl;
import model.Student;
@Controller
public class StudentController {
	@Autowired
	Studentdao sdao;
	


	public StudentController() {
		
		sdao = new Studentdaoimpl();
	}

	@RequestMapping("/")
	public String homepage() {
		return "index";
	}
	
	@RequestMapping("create")
	public ModelAndView create() {
		
		return new ModelAndView("Create","stu",new Student());
	}
	
	@RequestMapping("save")
	public ModelAndView save(@ModelAttribute("stu") Student student) {
		sdao.create(student);
		ModelAndView model=new ModelAndView();
		model.addObject("student",student);
		model.setViewName("redirect:/showAll");
		return  model;
	}
	
	@RequestMapping("showAll")
	public ModelAndView showAll() {
		ModelAndView model=new ModelAndView();
		List<Student> list= sdao.getStudent();
		
		model.addObject("showAll", list);
		model.setViewName("List");
		return model;
	}
	@RequestMapping("delete")
	public String delete(@RequestParam(value="id") int id) {
		sdao.delete(id);
		return "redirect:/showAll";
	}
	
	@RequestMapping("updateform")
	public ModelAndView updateForm(@RequestParam(value="id") int id) {
		Student student=sdao.getStudentbyId(id);
		ModelAndView model=new ModelAndView();
		
		System.out.println(student);
		model.addObject("update", student);
		model.setViewName("Update");
		return model;

	}
	@RequestMapping("update")
	public String update(@ModelAttribute("update") Student student) {
		System.out.println(student);
		sdao.update(student);
		
		return "redirect:/showAll";
	}
//	@RequestMapping("admin")
//	public String adminLogin() {
//		return "Save";
//	}
//	@RequestMapping("user")
//	public String userLogin() {
//		return "Create";
//	}
//	
//	@RequestMapping("logout")
//	public String userlogout() {
//		return "logout";
//	}
//	@RequestMapping("error")
//	public String adminerror() {
//		return "error";
//	}


}

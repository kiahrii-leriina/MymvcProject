package mypackage;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@Autowired

	private EntityManager em;

	@Transactional
	@RequestMapping("/all")
	public ModelAndView adduser(@RequestParam String name, @RequestParam String email, @RequestParam String rollno,
			@RequestParam String password) {

		EntityTransaction et = em.getTransaction();
		User u = new User(0, name, email, rollno, password);
		et.begin();
		u = em.merge(u);
		et.commit();

		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "new user added with id : " + u.getId());

		mv.setViewName("index.jsp");

		System.out.println(u);

		return mv;
	}

	@RequestMapping("/viewall")
	public ModelAndView viewAll() {

		Query q = em.createQuery("from User");
		List<User> users = q.getResultList();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewall.jsp");
		mv.addObject("users", users);

		return mv;

	}

	@RequestMapping("/updatepage")
	public ModelAndView update(@RequestParam int id) {
		User user = em.find(User.class, id);
		ModelAndView mv = new ModelAndView();
		if (user == null) {
			mv.setViewName("index.jsp");
			mv.addObject("msg", "User not found");
			return mv;
		}
		mv.setViewName("updateform.jsp");
		mv.addObject("user", user);
		return mv;
	}

	@Transactional
	@RequestMapping("/upt")
	public ModelAndView upd(@RequestParam int id, @RequestParam String name, @RequestParam String email,
			@RequestParam String rollno, @RequestParam String password) {

		User user = em.find(User.class, id);

		if (user != null) {
			user.setName(name);
			user.setEmail(email);
			user.setRollno(rollno);
			user.setPassword(password);
			em.merge(user);
		}

		return new ModelAndView("redirect:/viewall");
	}

	@RequestMapping("/delete")
	@Transactional
	public ModelAndView delete(@RequestParam int id) {
		System.out.println("ID to delete: " + id); // Debug log

		User user = em.find(User.class, id);
		
		EntityTransaction et = em.getTransaction();
		if (user != null) {
			System.out.println("Deleting user: " + user); // Debug log
			et.begin();
			em.remove(user);
			et.commit();
		} else {
			System.out.println("User not found with ID: " + id); // Debug log
		}

		return new ModelAndView("redirect:/viewall");
	}

}

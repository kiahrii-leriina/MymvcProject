package mypackage;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String rollno;
	private String password;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public User(int id, String name, String email, String rollno, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.rollno = rollno;
		this.password = password;
	}



	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getRollno() {
		return rollno;
	}


	public void setRollno(String rollno) {
		this.rollno = rollno;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", rollno=" + rollno + ", password="
				+ password + "]";
	}
	
	
	


}

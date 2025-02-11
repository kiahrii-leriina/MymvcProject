package mypackage;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("mypackage")
public class Config {
	
	@Bean
	public EntityManager entityManager() {
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}
}

package com.hiringspace;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class)
@ComponentScan("com.showup")
public class HiringspaceApplication {

	public static void main(String[] args) {
		SpringApplication.run(HiringspaceApplication.class, args);
	}

}


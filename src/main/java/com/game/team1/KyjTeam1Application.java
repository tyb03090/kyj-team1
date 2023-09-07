package com.game.team1;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@MapperScan
@ServletComponentScan
public class KyjTeam1Application {

	public static void main(String[] args) {
		SpringApplication.run(KyjTeam1Application.class, args);
	}

}

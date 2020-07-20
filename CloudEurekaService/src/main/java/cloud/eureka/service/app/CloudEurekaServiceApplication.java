package cloud.eureka.service.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
@EnableEurekaServer
@SpringBootApplication
public class CloudEurekaServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CloudEurekaServiceApplication.class, args);
	}

}

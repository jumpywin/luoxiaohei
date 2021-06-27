package group._204.luoxiaohei;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class LuoxiaoheiApplication {

    static Logger logger = LoggerFactory.getLogger(LuoxiaoheiApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(LuoxiaoheiApplication.class, args);
    }
}

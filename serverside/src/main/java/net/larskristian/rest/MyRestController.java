package net.larskristian.rest;

import net.larskristian.domain.User;
import net.larskristian.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


/**
 * Created by lars.johansen on 16/08/14.
 */
@RestController
public class MyRestController {

    Logger LOG = LoggerFactory.getLogger(MyRestController.class);

    @Autowired
    UserService testService;

    @RequestMapping("/test")
    public User getUser() {
        LOG.info("getUser()");

        User user = testService.getUser();
        return user;
    }
}
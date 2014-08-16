package net.larskristian.controller;

import net.larskristian.domain.User;
import net.larskristian.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyWebController {

    Logger LOG = LoggerFactory.getLogger(MyWebController.class);

    @Autowired
    UserService testService;

	@RequestMapping("/hello")
	public void printWelcome(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        LOG.info("printWelcome({})", model);

        User value = testService.getUser();
		model.addAttribute("message", value.getFirstName());
	}
}
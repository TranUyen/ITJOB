package com.itjob.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homePageOfAdmin")
public class HomeController {
    @RequestMapping(value = "/admin-home", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView modelAndView = new ModelAndView("admin/presentation/admin");
        return modelAndView;
    }

}

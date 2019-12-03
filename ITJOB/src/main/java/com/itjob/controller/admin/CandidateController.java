package com.itjob.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CandidateController {
    @RequestMapping(value = "/admin-candidate/list", method = RequestMethod.GET)
    public ModelAndView adminListCandidatePage() {
        ModelAndView modelAndView = new ModelAndView("admin/presentation/list-candidate");
        return modelAndView;
    }

    @RequestMapping(value = "/admin-candidate/edit", method = RequestMethod.GET)
    public ModelAndView adminEditCandidatePage() {
        ModelAndView modelAndView = new ModelAndView("#");
        return modelAndView;
    }
}

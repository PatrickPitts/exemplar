package org.nerdcore.exemplar.controllers;

import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {

    @RequestMapping("/")
    public ModelAndView homePage(){
        return new ModelAndView("index");
    }

    @RequestMapping("/choose-topic")
    public ModelAndView infoTopicChoose(@RequestParam("topic-choice") String choice){
        System.out.println(choice);
        return new ModelAndView(choice);
    }

    @RequestMapping("/cs")
    public ModelAndView csChoose(){
        return new ModelAndView("cs");
    }

    @RequestMapping("/physics")
    public ModelAndView physChoose(){
        return new ModelAndView("physics");
    }

    @RequestMapping("/math")
    public ModelAndView mathChoose(){



        return new ModelAndView("math");
    }

    @RequestMapping("/viewpdf")
    public ResponseEntity<InputStreamResource> getPDF(){
        String filepath = 
    }

    @RequestMapping("/app")
    public ModelAndView appChoose(){
        return new ModelAndView("app");
    }

    @RequestMapping("/edu")
    public ModelAndView eduChoose(){
        return new ModelAndView("edu");
    }
}

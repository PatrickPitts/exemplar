package org.nerdcore.exemplar.controllers;


import com.sun.xml.internal.ws.api.message.Header;
import org.json.simple.JSONArray;
import org.json.simple.parser.ParseException;
import org.nerdcore.exemplar.services.HeaderModelBuilderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.client.RestTemplate;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {

    @Autowired
    HeaderModelBuilderService headerModelBuilderService;


    @GetMapping({"/resume-document", "/"})
    public String resumeBuild(Model model){
        model.addAttribute("file", "fragments");
        model.addAttribute("fragment", "resume-page");
        model.addAttribute("title", "Resume");
        return "resume";
    }

    @GetMapping("/phys/{fragment}")
    public String physBuild(Model model, @PathVariable("fragment")String fragment){
//        model.addAttribute("file", "phys");
//        model.addAttribute("fragment", fragment);
//        model.addAttribute("title", "Physics");

        HeaderModelBuilderService.physModelBuild(model, fragment);
        return "index";
    }

    @GetMapping("/math/{fragment}")
    public String mathBuild(Model model, @PathVariable("fragment")String fragment){
        model.addAttribute("file", "math");
        model.addAttribute("fragment", fragment);
        model.addAttribute("title", "Mathematics");

        return "index";
    }

    @GetMapping("/app-dev/{fragment}")
    public String appBuild(Model model, @PathVariable("fragment")String fragment){
//        model.addAttribute("file", "app-dev");
//        model.addAttribute("fragment", fragment);
//        model.addAttribute("title", "Application Development");
        HeaderModelBuilderService.appModelBuild(model, fragment);
        return "index";
    }

    @GetMapping("/cs/{fragment}")
    public String csBuild(Model model, @PathVariable("fragment")String fragment){
        model.addAttribute("file", "app-dev");
        model.addAttribute("fragment", fragment);
        model.addAttribute("title", "Computer Science");
        return "index";
    }


    //Returns the "about my GitHub" view
    @GetMapping("/ghrepo")
    public String ghrepoRequest(Model model){

        //Gets and processes GitHub API data
        //TODO: Move to service layer
        String uri = "https://api.github.com/users/PatrickPitts/repos";
        List<String> reponames = new ArrayList<>();
        RestTemplate restTemplate = new RestTemplate();
        String result = restTemplate.getForObject(uri, String.class);
        JSONParser parser = new JSONParser();
        JSONArray arr = null;
        try {
            arr = (JSONArray) parser.parse(result);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        assert arr != null;
        for(Object o : arr){
            JSONObject obj = (JSONObject) o;
            reponames.add((String)obj.get("name"));
        }
        model.addAttribute("repos", reponames);
        return "github-repo";
    }
}

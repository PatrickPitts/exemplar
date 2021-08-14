package org.nerdcore.exemplar.controllers;


import org.json.simple.JSONArray;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {

    @GetMapping({"/", "index"})
    public String index(Model model){
        return "resume";
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

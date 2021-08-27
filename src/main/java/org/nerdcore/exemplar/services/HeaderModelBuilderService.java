package org.nerdcore.exemplar.services;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class HeaderModelBuilderService {

    public static void appModelBuild(Model model, String fragment){
        model.addAttribute("file", "app-dev");
        model.addAttribute("fragment", fragment);
        model.addAttribute("title", "Application Development");
        switch (fragment){
            case "exemplar":
                model.addAttribute("subtitle", "About Exemplar");
                break;
            case "spellbook-mngr":
                model.addAttribute("subtitle", "Spellbook Manager");
                break;
            default:
                break;
        }
    }

    public static void physModelBuild(Model model, String fragment){
        model.addAttribute("file", "phys");
        model.addAttribute("fragment", fragment);
        model.addAttribute("title", "Physics");
        switch (fragment){
            case "double-pendulum":
                model.addAttribute("subtitle", "Double Pendulum");
                break;
            case "comp":
                model.addAttribute("subtitle", "Computational Tools");
                break;
            default:
                break;
        }
    }
}

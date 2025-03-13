package ar.edu.itba.paw.webapp.controller;

import ar.edu.itb.paw.models.User;
import java.util.Arrays;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
public class HomeController {

    private static final List<User> USERS = new ArrayList<>();

    @RequestMapping
    public ModelAndView getHome() {
        final ModelAndView mav = new ModelAndView("index");
        mav.addObject("greeting", "PAW");
        return mav;
    }

    @RequestMapping(path = "/other")
    public ModelAndView getAnotherPage() {
        final ModelAndView modelAndView = new ModelAndView("anotherPage");
        modelAndView.addObject("myElement", "PAW 2024");
        return modelAndView;
    }

    @RequestMapping(path = "/dynamic")
    public ModelAndView getDynamicPage() {
        final ModelAndView modelAndView = new ModelAndView("dynamicPage");
        modelAndView.addObject("title", "PAW 2024");
        User user = new User("<h1>Francisco</h1>", "Quesada", 24);
//    user.setFirstName("Francisco");
//    user.setLastName("Quesada");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RequestMapping(path = "/tag-lib")
    public ModelAndView getTagLibPage() {
        final ModelAndView modelAndView = new ModelAndView("dynamicPageWithTaglib");
        User user = new User("Francisco", "Quesada", 24);
        user.setFriends(Arrays.asList("Pepe", "Juan"));
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.POST, path = "/addUser")
    public ModelAndView addUser(@ModelAttribute(name = "firstName") final String firstName,
                                @ModelAttribute(name = "lastName") final String lastName,
                                @ModelAttribute(name = "age") final int age) {

        USERS.add(new User(firstName, lastName, age));
        return new ModelAndView("redirect:/users");
    }

    @RequestMapping(path = "/addUser")
    public ModelAndView addUser() {
        return new ModelAndView("addUser");
    }

    @RequestMapping(path = "/users")
    public ModelAndView getUsers() {
        final ModelAndView modelAndView = new ModelAndView("users");
        modelAndView.addObject("users", USERS);
        return modelAndView;
    }
}

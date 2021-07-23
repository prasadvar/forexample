package com.person.detail.controller;

import com.person.detail.controller.Model.Person;
import com.person.detail.controller.Service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
@org.springframework.stereotype.Controller
public class Controller {
    @Autowired
    PersonService personService;

    @RequestMapping(value = "/getAllPerson", method = RequestMethod.GET, headers = "Accept=application/json")
    public String getPerson(Model model) {

        List<Person> listOfPerson = personService.getAllPerson();
        model.addAttribute("person", new Person());
        model.addAttribute("listOfPerson", listOfPerson);
        return "personDetails";
    }

    @RequestMapping(value = "/getPerson/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    public Person getPersonById(@PathVariable int id) {
        return personService.getPerson(id);
    }

    @RequestMapping(value = "/addPerson", method = RequestMethod.POST, headers = "Accept=application/json")
    public String addPerson(@ModelAttribute("person") Person person) {
        if(person.getId()==0)
        {
            personService.addPerson(person);
        }
        else
        {
            personService.updatePerson(person);
        }

        return "redirect:/getResult";
    }
    @RequestMapping(value = "/getResult", method = RequestMethod.GET, headers = "Accept=application/json")
    public String result(Model model)
    {
        List<Person> listOfPerson = personService.getAllPerson();
        model.addAttribute("person", new Person());
        model.addAttribute("listOfPerson", listOfPerson);
        return "studentresult";
    }
}



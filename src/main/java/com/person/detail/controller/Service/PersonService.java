package com.person.detail.controller.Service;

import com.person.detail.controller.Model.Person;
import com.person.detail.controller.dao.PersonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("personService")
public class PersonService {

    @Autowired
    PersonDao personDao;

    @Transactional
    public List<Person> getAllPerson() {
        return personDao.getAllPerson();
    }

    @Transactional
    public Person getPerson(int id) {
        return personDao.getPerson(id);
    }

    @Transactional
    public void addPerson(Person person) {
        personDao.addPerson(person);
    }

    @Transactional
    public void updatePerson(Person person) {
        personDao.updatePerson(person);

    }


}

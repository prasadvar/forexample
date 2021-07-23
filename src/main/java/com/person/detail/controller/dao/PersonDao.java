package com.person.detail.controller.dao;

import com.person.detail.controller.Model.Person;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class PersonDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    public List<Person> getAllPerson() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Person> personList = session.createQuery("from Count").list();
        return personList;
    }

    public Person getPerson(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Person person = (Person) session.get(Person.class, new Integer(id));
        return person;
    }

    public Person addPerson(Person person) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(person);
        return person;
    }

    public void updatePerson(Person person) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(person);
    }


    }




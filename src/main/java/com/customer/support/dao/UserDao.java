package com.customer.support.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.customer.support.model.Ticket;
import com.customer.support.model.User;

@Repository
public class UserDao {

	@Autowired
	private EntityManager entityManager;
	
	public void save(User user) {
		Session currentSession= entityManager.unwrap(Session.class);
		currentSession.save(user);
	}

	public Ticket saveTicket(Ticket ticket) {
		Session currentSession= entityManager.unwrap(Session.class);
		currentSession.save(ticket);
		return ticket;
	}
	
	@SuppressWarnings("unchecked")
	public List<Ticket> listTickets() {
		Session currentSession= entityManager.unwrap(Session.class);
	    return currentSession.createQuery("from com.customer.support.model.Ticket").list();
	}

}

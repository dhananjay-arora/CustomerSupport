package com.customer.support.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customer.support.dao.UserDao;
import com.customer.support.model.Ticket;
import com.customer.support.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Transactional
	public void save(User user) {
		userDao.save(user);
	}
	@Transactional
	public Ticket saveTicket(Ticket ticket) {
		return userDao.saveTicket(ticket);
	}
	@Transactional
	public List<Ticket> listTickets() {
		return userDao.listTickets();
	}

}

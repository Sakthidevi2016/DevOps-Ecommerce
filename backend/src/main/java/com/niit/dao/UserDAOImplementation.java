package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.model.Supplier;
import com.niit.model.User;

public class UserDAOImplementation implements UserDAO{
	
	@Autowired
	SessionFactory sessionfactory;

	public boolean registerUser(User user) {
		try
		{
			sessionfactory.getCurrentSession().save(user);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public boolean modifyUser(User user) {
		try
		{
			sessionfactory.getCurrentSession().update(user);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public User getUser(String userName) {
		Session session = sessionfactory.openSession();
		User user = session.get(User.class,userName);
		session.close();
		return user;
	}

	public List<Supplier> listSupplier() {
		return null;
	}

}

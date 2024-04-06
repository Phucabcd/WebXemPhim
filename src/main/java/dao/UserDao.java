package dao;

import java.util.List;

import entity.User;

public interface UserDao {
	List<User> findAll();
	User findById(String id);
	void create(User user);
	void update(User user);
	void delete(User user);
//	boolean accountLogin(String id, String password);
}

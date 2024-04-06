package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.User;
import jpa.JpaUtils;

public class UserDaoImpl implements UserDao{

	@Override
	public List<User> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
		List<User> list = query.getResultList();
		return list;
	}

	@Override
	public User findById(String id) {
		if (id == null || id.isEmpty()) {
	        return null;
	    }
		EntityManager em = JpaUtils.getEntityManager();
		User user = em.find(User.class, id);
		return user;
	}

	@Override
	public void create(User user) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public void update(User user) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public void delete(User user) {
		EntityManager em = JpaUtils.getEntityManager();
		User user2 = em.find(User.class, user.getId());
		try {
			em.getTransaction().begin();
			em.remove(user2);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

//	@Override
//	public boolean accountLogin(String id, String password) {
//	    EntityManager em = JpaUtils.getEntityManager();
//	    String query = "SELECT u FROM User u WHERE u.id = :id AND u.password = :password";
//	    
//	    try {
//	        em.getTransaction().begin();
//	        TypedQuery<User> typeQuery = em.createQuery(query, User.class);
//	        typeQuery.setParameter("id", id);
//	        typeQuery.setParameter("password", password);
//	        User loginUser = typeQuery.getSingleResult();
//	        
//	        if(loginUser != null) {
//	            System.out.println("Đăng nhập thành công");
//	            
//	            return true; // Đăng nhập thành công
//	        } else {
//	            System.out.println("Sai tên đăng nhập hoặc mật khẩu!");
//	        }
//	        em.getTransaction().commit();
//	    } catch (Exception e) {
//	        em.getTransaction().rollback();
//	        e.printStackTrace();
//	    } finally {
//	        em.close(); // Đóng EntityManager
//	    }
//	    return false; // Đăng nhập thất bại
//	}

		
	
	
}

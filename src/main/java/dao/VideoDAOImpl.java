package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.Video;
import jpa.JpaUtils;


public class VideoDAOImpl implements VideoDAO{
	EntityManager em = JpaUtils.getEntityManager();
	@Override
	public List<Video> findAll() {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		return query.getResultList();
	}

	@Override
	public Video findById(String id) {
		return em.find(Video.class, id);
	}

	@Override
	public void create(Video video) {
		try {
			em.getTransaction().begin();
			em.persist(video);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(Video video) {
		try {
			em.getTransaction().begin();
			em.merge(video);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void deleteById(String id) {
		Video video = em.find(Video.class, id);
		try {
			em.getTransaction().begin();
			em.remove(video);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
}

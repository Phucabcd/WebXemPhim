package entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CountRepost {
	@Id
	String userId;
	Long count;
	public CountRepost() {
		super();
	}
	public CountRepost(String userId, Long count) {
		super();
		this.userId = userId;
		this.count = count;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	
}

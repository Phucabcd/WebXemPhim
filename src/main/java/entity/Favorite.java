package entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name= "Favorites", uniqueConstraints = {
		@UniqueConstraint(columnNames = {"VideoId" , "UserId"})
})
public class Favorite {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	@ManyToOne 
	@JoinColumn(name = "UserId")
	User user = new User();
	
	@ManyToOne 
	@JoinColumn(name = "VideoId")
	Video video = new Video();
	
	@Temporal(TemporalType.DATE)
	@Column(name = "likeDate")
	Date likeDate = new Date();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public Date getLikeDate() {
		return likeDate;
	}

	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}
	
	
}

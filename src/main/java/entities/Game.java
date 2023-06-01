package entities;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.search.mapper.pojo.mapping.definition.annotation.FullTextField;
import javax.persistence.Column;
import javax.persistence.Id;

@Entity
@Table(name = "Games")
public class Game {
	
	@Id
	@Column(name = "steam_appid")
    private Integer id;
	
	@FullTextField
	@Column(name = "name")
    private String name;
	
	@Column(name = "short_description")
    private String short_description;
	
	@Column(name = "header_image")
    private String header_image;
	
	@Column(name = "publishers")
    private String publishers;
	
	@Column(name = "discount_percent")
    private Integer discount_percent;
	
	@Column(name = "initial")
    private Integer initial;
	
	@Column(name = "recommendations")
    private Integer recommendations;
	
    
	public Game() {
		// TODO Auto-generated constructor stub
	}


	public Game(Integer steam_appid, String name, String short_description, String header_image, String publishers,
			Integer discount_percent, Integer initial, Integer recommendations) {
		super();
		this.id = steam_appid;
		this.name = name;
		this.short_description = short_description;
		this.header_image = header_image;
		this.publishers = publishers;
		this.discount_percent = discount_percent;
		this.initial = initial;
		this.recommendations = recommendations;
	}


	public Integer getSteam_appid() {
		return id;
	}


	public void setSteam_appid(Integer steam_appid) {
		this.id = steam_appid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getShort_description() {
		return short_description;
	}


	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}


	public String getHeader_image() {
		return header_image;
	}


	public void setHeader_image(String header_image) {
		this.header_image = header_image;
	}


	public String getPublishers() {
		return publishers;
	}


	public void setPublishers(String publishers) {
		this.publishers = publishers;
	}


	public Integer getDiscount_percent() {
		return discount_percent;
	}


	public void setDiscount_percent(Integer discount_percent) {
		this.discount_percent = discount_percent;
	}


	public Integer getInitial() {
		return initial;
	}


	public void setInitial(Integer initial) {
		this.initial = initial;
	}


	public Integer getRecommendations() {
		return recommendations;
	}


	public void setRecommendations(Integer recommendations) {
		this.recommendations = recommendations;
	}

	


    
}

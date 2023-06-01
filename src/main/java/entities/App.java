package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "Apps")
public class App {
	
	@Id
    @Column(name = "appid")
    private Integer id;

    //...

	
	public App() {
		// TODO Auto-generated constructor stub
	}
	
	

	public App(Integer id) {
		super();
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	

	
	
	
}

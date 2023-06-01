package entities;

import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.TypeFactory;

public class Sorting {

	public Sorting() {
		// TODO Auto-generated constructor stub
	}
    private String property;

    private String direction;



    public Sorting(String property, String direction) {
        this.property = property;
        this.direction = direction;
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public static void main(String[] args) throws JsonParseException, IOException {
        final String json = "[{\"property\":\"title1\", \"direction\":\"ASC\"}, {\"property\":\"title2\", \"direction\":\"DESC\"}]";
        ObjectMapper objectMapper = new ObjectMapper();
        TypeFactory typeFactory = objectMapper.getTypeFactory();
        List<Sorting> someClassList = objectMapper.readValue(json, typeFactory.constructCollectionType(List.class, Sorting.class));
        someClassList.forEach(x -> System.out.println(x.toString()));
    }
}

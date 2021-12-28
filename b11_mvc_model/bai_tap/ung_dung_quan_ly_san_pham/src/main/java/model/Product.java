package model;

public class Product {
    private int id;
    private String name;
    private double price;
    private String descriptionOfProd;
    private String producer;

    public Product() {
    }

    public Product(int id, String name, double price, String descriptionOfProd, String producer) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.descriptionOfProd = descriptionOfProd;
        this.producer = producer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescriptionOfProd() {
        return descriptionOfProd;
    }

    public void setDescriptionOfProd(String descriptionOfProd) {
        this.descriptionOfProd = descriptionOfProd;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}

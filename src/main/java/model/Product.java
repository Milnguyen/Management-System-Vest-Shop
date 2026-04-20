package model;

public class Product {

    private int id;
    private String name;
    private double price;
    private int quantity;
    private String size;

    // ✅ Constructor rỗng (QUAN TRỌNG cho JSP/DAO)
    public Product() {
    }

    // ✅ Constructor đầy đủ (có size)
    public Product(int id, String name, double price, int quantity, String size) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.size = size;
    }

    // (optional) constructor cũ nếu bạn còn dùng
    public Product(int id, String name, double price, int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    // Getter
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getSize() {
        return size;
    }

    // Setter
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setSize(String size) {
        this.size = size;
    }
}
package servlet;

public class Item {
    private int id;
    private String name;
    private String category;
    private String detail;
    private String price;

    public Item(int id, String name, String category, String detail, String price) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.detail = detail;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public String getDetail() {
        return detail;
    }

    public String getPrice() {
        return price;
    }
}
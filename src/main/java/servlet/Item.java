package servlet;

public class Item {
    private String name;
    private String category;
    private String detail;
    private String price;

    public Item(String name, String category, String detail, String price) {
        this.name = name;
        this.category = category;
        this.detail = detail;
        this.price = price;
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
package servlet;

public class Item {
    private int id;
    private String name;
    private String category;
    private String detail;
    private String comment;
    private String price;
    private String sellerId;
    private String imagePath;

    public Item(int id, String name, String category, String detail, String comment, String price, String sellerId, String imagePath) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.detail = detail;
        this.comment = comment;
        this.price = price;
        this.sellerId = sellerId;
        this.imagePath = imagePath;
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

    public String getComment() {
        return comment;
    }

    public String getPrice() {
        return price;
    }

    public String getSellerId() {
        return sellerId;
    }

    public String getImagePath() {
        return imagePath;
    }

    public String getMaskedSellerId() {
        if (sellerId == null || sellerId.length() < 2) {
            return "";
        }
        return sellerId.substring(0, 1)
                + "*****"
                + sellerId.substring(sellerId.length() - 1);
    }
}
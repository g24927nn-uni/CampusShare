package servlet;

import java.util.ArrayList;
import java.util.List;

public class ItemStore {

    private static List<Item> items = new ArrayList<>();

    static {
        items.add(new Item(1,"Java基礎", "教科書", "プログラミング", "500円"));
        items.add(new Item(2,"ミニ冷蔵庫", "家具", "家電", "3000円"));
        items.add(new Item(3, "英語参考書", "教科書", "金のフレーズ", "300円"));
    }

    public static List<Item> getItems() {
        return items;
    }

    public static void addItem(Item item) {
        items.add(item);
    }
}
package servlet;

import java.util.ArrayList;
import java.util.List;

public class ItemStore {

    private static List<Item> items = new ArrayList<>();
    private static int nextId = 4;

    static {
        items.add(new Item(
                1,
                "Java基礎",
                "教科書",
                "プログラミング",
                "授業で使用した教科書です",
                "500",
                "A00001",
                "images/sample.jpeg"
        ));

        items.add(new Item(
                2,
                "ミニ冷蔵庫",
                "家具",
                "家電",
                "一人暮らし用です",
                "3000",
                "B00002",
                "images/sample.jpeg"
        ));

        items.add(new Item(
                3,
                "英語参考書",
                "参考書",
                "英語",
                "TOEIC対策に使いました",
                "700",
                "G00003",
                "images/sample.jpeg"
        ));
    }

    public static List<Item> getItems() {
        return items;
    }

    public static void addItem(Item item) {
        items.add(item);
    }

    public static int getNextId() {
        return nextId++;
    }

    public static Item findById(int id) {
        for (Item item : items) {
            if (item.getId() == id) {
                return item;
            }
        }
        return null;
    }
}
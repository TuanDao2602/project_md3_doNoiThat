package ra.model.entity;

import java.util.ArrayList;
import java.util.List;

public class Product {
    private int productID;
    private String productName;
    private float price;
    private int quantity;
    private String title;
    private String productImages;
    private boolean productStatus;
    private int catagoriesID;
    private List<String> listImage = new ArrayList<>();

    public Product() {
    }

    public Product(int productID, String productName, float price, int quantity, String title, String productImages, boolean productStatus, int catagoriesID, List<String> listImage) {
        this.productID = productID;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.title = title;
        this.productImages = productImages;
        this.productStatus = productStatus;
        this.catagoriesID = catagoriesID;
        this.listImage = listImage;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getProductImages() {
        return productImages;
    }

    public void setProductImages(String productImages) {
        this.productImages = productImages;
    }

    public boolean isProductStatus() {
        return productStatus;
    }

    public void setProductStatus(boolean productStatus) {
        this.productStatus = productStatus;
    }

    public int getCatagoriesID() {
        return catagoriesID;
    }

    public void setCatagoriesID(int catagoriesID) {
        this.catagoriesID = catagoriesID;
    }

    public List<String> getListImage() {
        return listImage;
    }

    public void setListImage(List<String> listImage) {
        this.listImage = listImage;
    }
}
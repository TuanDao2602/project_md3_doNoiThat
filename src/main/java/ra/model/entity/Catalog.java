package ra.model.entity;

public class Catalog {
    private int catagoriesID;
    private String catagoriesName;
    private boolean catagoriesStatus;

    public Catalog() {
    }

    public Catalog(int catagoriesID, String catagoriesName, boolean catagoriesStatus) {
        this.catagoriesID = catagoriesID;
        this.catagoriesName = catagoriesName;
        this.catagoriesStatus = catagoriesStatus;
    }

    public int getCatagoriesID() {
        return catagoriesID;
    }

    public void setCatagoriesID(int catagoriesID) {
        this.catagoriesID = catagoriesID;
    }

    public String getCatagoriesName() {
        return catagoriesName;
    }

    public void setCatagoriesName(String catagoriesName) {
        this.catagoriesName = catagoriesName;
    }

    public boolean isCatagoriesStatus() {
        return catagoriesStatus;
    }

    public void setCatagoriesStatus(boolean catagoriesStatus) {
        this.catagoriesStatus = catagoriesStatus;
    }
}

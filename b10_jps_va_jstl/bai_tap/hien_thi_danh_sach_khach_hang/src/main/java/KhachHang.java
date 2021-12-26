public class KhachHang {
    private String name;
    private String birthDate;
    private String address;
    private String picture;

    public KhachHang() {
    }

    public KhachHang(String name, String birthDate, String address, String picture) {
        this.name = name;
        this.birthDate = birthDate;
        this.address = address;
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

}

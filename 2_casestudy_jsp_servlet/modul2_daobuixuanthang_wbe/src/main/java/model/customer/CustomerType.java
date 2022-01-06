package model.customer;

public class CustomerType {
    public int customerTypeID;
    public String customerTypeName;

    public CustomerType() {
    }

    public CustomerType(int customerTypeID, String customerTypeName) {
        this.customerTypeID = customerTypeID;
        this.customerTypeName = customerTypeName;
    }

    public CustomerType(int customerTypeID) {
        this.customerTypeID = customerTypeID;
    }

    public int getCustomerTypeID() {
        return customerTypeID;
    }

    public void setCustomerTypeID(int customerTypeID) {
        this.customerTypeID = customerTypeID;
    }

    public String getCustomerTypeName() {
        return customerTypeName;
    }

    public void setCustomerTypeName(String customerTypeName) {
        this.customerTypeName = customerTypeName;
    }


}

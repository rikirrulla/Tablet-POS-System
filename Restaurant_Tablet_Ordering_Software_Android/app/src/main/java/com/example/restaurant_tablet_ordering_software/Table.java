package com.example.restaurant_tablet_ordering_software;

public class Table {
    private String tableID;
    private String no_of_table;
    private String status;
    private String pin_code;

    public Table() {
    }

    public Table(String tableID, String no_of_table, String status, String pin_code) {
        this.tableID = tableID;
        this.no_of_table = no_of_table;
        this.status = status;
        this.pin_code = pin_code;
    }

    public String getTableID() {
        return tableID;
    }

    public void setTableID(String tableID) {
        this.tableID = tableID;
    }

    public String getNo_of_table() {
        return no_of_table;
    }

    public void setNo_of_table(String no_of_table) {
        this.no_of_table = no_of_table;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPin_code() {
        return pin_code;
    }

    public void setPin_code(String pin_code) {
        this.pin_code = pin_code;
    }
}

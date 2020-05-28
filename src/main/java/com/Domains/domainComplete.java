package com.Domains;

import java.io.Serializable;

public class domainComplete implements Serializable {
    private String gclass;
    private int[] ids;
    private String number;

    public String getGclass() {
        return gclass;
    }

    public void setGclass(String gclass) {
        this.gclass = gclass;
    }

    public int[] getIds() {
        return ids;
    }

    public void setIds(int[] ids) {
        this.ids = ids;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}

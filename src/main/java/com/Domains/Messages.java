package com.Domains;

public class Messages {
    public String Mname;
    public String value;

    public String getMname() {
        return Mname;
    }

    public void setMname(String mname) {
        Mname = mname;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "Messages{" +
                "Mname='" + Mname + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}

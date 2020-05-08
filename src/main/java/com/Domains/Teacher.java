package com.Domains;

import java.util.Date;

public class Teacher {
    private String teaNum;
    private String teaName;
    private String teaSex;
    private String teaGrade;
    private String teaSchool;
    private Date teaRegisTime;
    private int teaRefer;
    private String teaQuantity;

    public String getTeaQuantity() {
        return teaQuantity;
    }

    public void setTeaQuantity(String teaQuantity) {
        this.teaQuantity = teaQuantity;
    }

    public String getTeaNum() {
        return teaNum;
    }

    public void setTeaNum(String teaNum) {
        this.teaNum = teaNum;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getTeaSex() {
        return teaSex;
    }

    public void setTeaSex(String teaSex) {
        this.teaSex = teaSex;
    }

    public String getTeaGrade() {
        return teaGrade;
    }

    public void setTeaGrade(String teaGrade) {
        this.teaGrade = teaGrade;
    }

    public String getTeaSchool() {
        return teaSchool;
    }

    public void setTeaSchool(String teaSchool) {
        this.teaSchool = teaSchool;
    }

    public Date getTeaRegisTime() {
        return teaRegisTime;
    }

    public void setTeaRegisTime(Date teaRegisTime) {
        this.teaRegisTime = teaRegisTime;
    }

    public int getTeaRefer() {
        return teaRefer;
    }

    public void setTeaRefer(int teaRefer) {
        this.teaRefer = teaRefer;
    }
}

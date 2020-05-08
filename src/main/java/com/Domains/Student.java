package com.Domains;

import java.util.Date;

public class Student {
    private String stuNum;
    private String stuName;
    private String stuSex;
    private String stuClass;
    private String stuGrade;
    private String stuSchool;
    private Date stuRegisTime;
    private int stuRefer;

    public String getStuNum() {
        return stuNum;
    }

    public void setStuNum(String stuNum) {
        this.stuNum = stuNum;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }

    public String getStuGrade() {
        return stuGrade;
    }

    public void setStuGrade(String stuGrade) {
        this.stuGrade = stuGrade;
    }

    public String getStuSchool() {
        return stuSchool;
    }

    public void setStuSchool(String stuSchool) {
        this.stuSchool = stuSchool;
    }

    public Date getStuRegisTime() {
        return stuRegisTime;
    }

    public void setStuRegisTime(Date stuRegisTime) {
        this.stuRegisTime = stuRegisTime;
    }

    public int getStuRefer() {
        return stuRefer;
    }

    public void setStuRefer(int stuRefer) {
        this.stuRefer = stuRefer;
    }
}

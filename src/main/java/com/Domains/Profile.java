package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class Profile implements Serializable {

    private String userCount;
    private int userId;
    private String teaNum;
    private String teaName;
    private String teaSex;
    private String teaGrade;
    private String teaSchool;
    private String userIdentity;
    private String userCondition;
    private String userCertify;
    private Date userRegisterTime;
    private int teaRefer;
    private String teaQuantity;
    private String userPhone;
    private String userEmail;

    public String getUserCount() {
        return userCount;
    }

    public void setUserCount(String userCount) {
        this.userCount = userCount;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public String getUserIdentity() {
        return userIdentity;
    }

    public void setUserIdentity(String userIdentity) {
        this.userIdentity = userIdentity;
    }

    public String getUserCondition() {
        return userCondition;
    }

    public void setUserCondition(String userCondition) {
        this.userCondition = userCondition;
    }

    public String getUserCertify() {
        return userCertify;
    }

    public void setUserCertify(String userCertify) {
        this.userCertify = userCertify;
    }

    public Date getUserRegisterTime() {
        return userRegisterTime;
    }

    public void setUserRegisterTime(Date userRegisterTime) {
        this.userRegisterTime = userRegisterTime;
    }

    public int getTeaRefer() {
        return teaRefer;
    }

    public void setTeaRefer(int teaRefer) {
        this.teaRefer = teaRefer;
    }

    public String getTeaQuantity() {
        return teaQuantity;
    }

    public void setTeaQuantity(String teaQuantity) {
        this.teaQuantity = teaQuantity;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }
}

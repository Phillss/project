package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private int userId;
    private String userCount;
    private String userPassword;
    private String userIdentity;
    private String userCondition;
    private Date userRegisterTime;
    private String userImgLocal;
    private String userCertify;
    private String userPhone;
    private String userEmail;

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

    public String getUserCount() {
        return userCount;
    }

    public void setUserCount(String userCount) {
        this.userCount = userCount;
    }

    public String getUserCertify() {
        return userCertify;
    }

    public void setUserCertify(String userCertify) {
        this.userCertify = userCertify;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
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

    public Date getUserRegisterTime() {
        return userRegisterTime;
    }

    public void setUserRegisterTime(Date userRegisterTime) {
        this.userRegisterTime = userRegisterTime;
    }

    public String getUserImgLocal() {
        return userImgLocal;
    }

    public void setUserImgLocal(String userImgLocal) {
        this.userImgLocal = userImgLocal;
    }

}

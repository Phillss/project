package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private int userId;
    private String userName;
    private String userPassword;
    private String userIdentity;
    private String userCondition;
    private Date userRegisterTime;
    private String userRecentRemark;
    private String userSessionId;
    private String userImgLocal;
    private String userNotices;

    public String getUserNotices() {
        return userNotices;
    }

    public void setUserNotices(String userNotices) {
        this.userNotices = userNotices;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public String getUserRecentRemark() {
        return userRecentRemark;
    }

    public void setUserRecentRemark(String userRecentRemark) {
        this.userRecentRemark = userRecentRemark;
    }

    public String getUserSessionId() {
        return userSessionId;
    }

    public void setUserSessionId(String userSessionId) {
        this.userSessionId = userSessionId;
    }

    public String getUserImgLocal() {
        return userImgLocal;
    }

    public void setUserImgLocal(String userImgLocal) {
        this.userImgLocal = userImgLocal;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userIdentity='" + userIdentity + '\'' +
                ", userCondition='" + userCondition + '\'' +
                ", userRegisterTime=" + userRegisterTime +
                ", userRecentRemark='" + userRecentRemark + '\'' +
                ", userSessionId='" + userSessionId + '\'' +
                ", userImgLocal='" + userImgLocal + '\'' +
                '}';
    }
}

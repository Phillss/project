package com.Domains;

import java.util.Date;

public class privateMark {
    private int privateRemarkId;
    private String privateRemark;
    private Date privateRemarkInsertTime;
    private String privateRemarkReference;
    private String privateRefer;
    private String  privateReferIndex;

    public privateMark() {
    }

    public privateMark(String privateRemark, Date privateRemarkInsertTime, String privateRemarkReference, String privateRefer, String privateReferIndex) {
        this.privateRemark = privateRemark;
        this.privateRemarkInsertTime = privateRemarkInsertTime;
        this.privateRemarkReference = privateRemarkReference;
        this.privateRefer = privateRefer;
        this.privateReferIndex = privateReferIndex;
    }

    public String getPrivateRefer() {
        return privateRefer;
    }

    public void setPrivateRefer(String privateRefer) {
        this.privateRefer = privateRefer;
    }

    public String getPrivateReferIndex() {
        return privateReferIndex;
    }

    public void setPrivateReferIndex(String privateReferIndex) {
        this.privateReferIndex = privateReferIndex;
    }

    public int getPrivateRemarkId() {
        return privateRemarkId;
    }

    public void setPrivateRemarkId(int privateRemarkId) {
        this.privateRemarkId = privateRemarkId;
    }

    public String getPrivateRemark() {
        return privateRemark;
    }

    public void setPrivateRemark(String privateRemark) {
        this.privateRemark = privateRemark;
    }

    public Date getPrivateRemarkInsertTime() {
        return privateRemarkInsertTime;
    }

    public void setPrivateRemarkInsertTime(Date privateRemarkInsertTime) {
        this.privateRemarkInsertTime = privateRemarkInsertTime;
    }

    public String getPrivateRemarkReference() {
        return privateRemarkReference;
    }

    public void setPrivateRemarkReference(String privateRemarkReference) {
        this.privateRemarkReference = privateRemarkReference;
    }
}

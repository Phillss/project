package com.Domains;

import java.util.Date;

public class publicMark {
    private int publicRemarkId;
    private String publicRemark;
    private Date pubicInsertTime;
    private String publicRefer;
    private String publicReferIndex;

    public publicMark() {
    }

    public publicMark(String publicRemark, Date pubicInsertTime, String publicRefer, String publicReferIndex) {
        this.publicRemark = publicRemark;
        this.pubicInsertTime = pubicInsertTime;
        this.publicRefer = publicRefer;
        this.publicReferIndex = publicReferIndex;
    }

    public String getPublicRefer() {
        return publicRefer;
    }

    public void setPublicRefer(String publicRefer) {
        this.publicRefer = publicRefer;
    }

    public String getPublicReferIndex() {
        return publicReferIndex;
    }

    public void setPublicReferIndex(String publicReferIndex) {
        this.publicReferIndex = publicReferIndex;
    }

    public int getPublicRemarkId() {
        return publicRemarkId;
    }

    public void setPublicRemarkId(int publicRemarkId) {
        this.publicRemarkId = publicRemarkId;
    }

    public String getPublicRemark() {
        return publicRemark;
    }

    public void setPublicRemark(String publicRemark) {
        this.publicRemark = publicRemark;
    }

    public Date getPubicInsertTime() {
        return pubicInsertTime;
    }

    public void setPubicInsertTime(Date pubicInsertTime) {
        this.pubicInsertTime = pubicInsertTime;
    }
}

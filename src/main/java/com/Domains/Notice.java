package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class Notice  implements Serializable {
    private int noticeID;
    private String noticeTitle;
    private String noticeContent;
    private Date noticeDate;
    private String noticeOwn;
    private String noticeObject;

    public int getNoticeID() {
        return noticeID;
    }

    public void setNoticeID(int noticeID) {
        this.noticeID = noticeID;
    }

    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    public String getNoticeContent() {
        return noticeContent;
    }

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }

    public Date getNoticeDate() {
        return noticeDate;
    }

    public void setNoticeDate(Date noticeDate) {
        this.noticeDate = noticeDate;
    }

    public String getNoticeOwn() {
        return noticeOwn;
    }

    public void setNoticeOwn(String noticeOwn) {
        this.noticeOwn = noticeOwn;
    }

    public String getNoticeObject() {
        return noticeObject;
    }

    public void setNoticeObject(String noticeObject) {
        this.noticeObject = noticeObject;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "noticeID=" + noticeID +
                ", noticeTitle='" + noticeTitle + '\'' +
                ", noticeContent='" + noticeContent + '\'' +
                ", noticeDate=" + noticeDate +
                ", noticeOwn='" + noticeOwn + '\'' +
                ", noticeObject='" + noticeObject + '\'' +
                '}';
    }
}

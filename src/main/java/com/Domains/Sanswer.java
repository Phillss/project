package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class Sanswer implements Serializable {
    private int sanswerID;
    private String sanswerContent;
    private String Type;
    private Date sanswerTime;
    private String sanswerOwn;
    private String sanswerFromW;
    private String sanswerFromAss;
    private String sanswerClass;
    private String sanswerStatus;
    private String sanswerMark;

    public String getSanswerFromAss() {
        return sanswerFromAss;
    }

    public void setSanswerFromAss(String sanswerFromAss) {
        this.sanswerFromAss = sanswerFromAss;
    }

    public int getSanswerID() {
        return sanswerID;
    }

    public void setSanswerID(int sanswerID) {
        this.sanswerID = sanswerID;
    }

    public String getSanswerContent() {
        return sanswerContent;
    }

    public void setSanswerContent(String sanswerContent) {
        this.sanswerContent = sanswerContent;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public Date getSanswerTime() {
        return sanswerTime;
    }

    public void setSanswerTime(Date sanswerTime) {
        this.sanswerTime = sanswerTime;
    }

    public String getSanswerOwn() {
        return sanswerOwn;
    }

    public void setSanswerOwn(String sanswerOwn) {
        this.sanswerOwn = sanswerOwn;
    }

    public String getSanswerFromW() {
        return sanswerFromW;
    }

    public void setSanswerFromW(String sanswerFromW) {
        this.sanswerFromW = sanswerFromW;
    }

    public String getSanswerClass() {
        return sanswerClass;
    }

    public void setSanswerClass(String sanswerClass) {
        this.sanswerClass = sanswerClass;
    }

    public String getSanswerStatus() {
        return sanswerStatus;
    }

    public void setSanswerStatus(String sanswerStatus) {
        this.sanswerStatus = sanswerStatus;
    }

    public String getSanswerMark() {
        return sanswerMark;
    }

    public void setSanswerMark(String sanswerMark) {
        this.sanswerMark = sanswerMark;
    }
}

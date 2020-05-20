package com.Domains;

import java.util.Date;

public class Singles {
    private int sanswerID;
    private String shortQuestionTitle;
    private String shortQuestionAnswer;
    private String sanswerContent;
    private Date sanswerTime;
    private String sanswerOwn;
    private String sanswerClass;
    private String stuName;
    private String sanswerStatus;
    private String sanswerScore;
    private String sanswerFromAss;

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

    public String getShortQuestionTitle() {
        return shortQuestionTitle;
    }

    public void setShortQuestionTitle(String shortQuestionTitle) {
        this.shortQuestionTitle = shortQuestionTitle;
    }

    public String getShortQuestionAnswer() {
        return shortQuestionAnswer;
    }

    public void setShortQuestionAnswer(String shortQuestionAnswer) {
        this.shortQuestionAnswer = shortQuestionAnswer;
    }

    public String getSanswerContent() {
        return sanswerContent;
    }

    public void setSanswerContent(String sanswerContent) {
        this.sanswerContent = sanswerContent;
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

    public String getSanswerClass() {
        return sanswerClass;
    }

    public void setSanswerClass(String sanswerClass) {
        this.sanswerClass = sanswerClass;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getSanswerStatus() {
        return sanswerStatus;
    }

    public void setSanswerStatus(String sanswerStatus) {
        this.sanswerStatus = sanswerStatus;
    }

    public String getSanswerScore() {
        return sanswerScore;
    }

    public void setSanswerScore(String sanswerScore) {
        this.sanswerScore = sanswerScore;
    }
}

package com.Domains;

import java.io.Serializable;

public class completeBack implements Serializable {
    private int sanswerID;
    private String shortQuestionTitle;
    private String shortQuestionAnswer;
    private String sanswerContent;
    private String stuName;
    private String stuClass;

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

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }

    @Override
    public String toString() {
        return "completeBack{" +
                "shortQuestionTitle='" + shortQuestionTitle + '\'' +
                ", shortQuestionAnswer='" + shortQuestionAnswer + '\'' +
                ", sanswerContent='" + sanswerContent + '\'' +
                ", stuName='" + stuName + '\'' +
                ", stuClass='" + stuClass + '\'' +
                '}';
    }
}

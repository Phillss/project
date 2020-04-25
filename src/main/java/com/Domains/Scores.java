package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class Scores implements Serializable {
    private String scoreID;
    private String scoreValue;
    private String scoreCourse;
    private Date scoreUndateTime;
    private String scoreRelative;
    private String scoreClass;
    private String scoreGrade;
    private String scoreInstitute;
    private String scoreSchool;

    public String getScoreID() {
        return scoreID;
    }

    public void setScoreID(String scoreID) {
        this.scoreID = scoreID;
    }

    public String getScoreValue() {
        return scoreValue;
    }

    public void setScoreValue(String scoreValue) {
        this.scoreValue = scoreValue;
    }

    public String getScoreCourse() {
        return scoreCourse;
    }

    public void setScoreCourse(String scoreCourse) {
        this.scoreCourse = scoreCourse;
    }

    public Date getScoreUndateTime() {
        return scoreUndateTime;
    }

    public void setScoreUndateTime(Date scoreUndateTime) {
        this.scoreUndateTime = scoreUndateTime;
    }

    public String getScoreRelative() {
        return scoreRelative;
    }

    public void setScoreRelative(String scoreRelative) {
        this.scoreRelative = scoreRelative;
    }

    public String getScoreClass() {
        return scoreClass;
    }

    public void setScoreClass(String scoreClass) {
        this.scoreClass = scoreClass;
    }

    public String getScoreGrade() {
        return scoreGrade;
    }

    public void setScoreGrade(String scoreGrade) {
        this.scoreGrade = scoreGrade;
    }

    public String getScoreInstitute() {
        return scoreInstitute;
    }

    public void setScoreInstitute(String scoreInstitute) {
        this.scoreInstitute = scoreInstitute;
    }

    public String getScoreSchool() {
        return scoreSchool;
    }

    public void setScoreSchool(String scoreSchool) {
        this.scoreSchool = scoreSchool;
    }
}

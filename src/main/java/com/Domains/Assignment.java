package com.Domains;

import java.util.Date;

public class Assignment {
    private int assignmentID;
    private String assignmentName;
    private Date assignmentPbTime;
    private Date assignmentDeadLine;
    private String assignmentPber;
    private String assignmentChoice;
    private String assignmentShort;

    public int getAssignmentID() {
        return assignmentID;
    }

    public void setAssignmentID(int assignmentID) {
        this.assignmentID = assignmentID;
    }

    public String getAssignmentName() {
        return assignmentName;
    }

    public void setAssignmentName(String assignmentName) {
        this.assignmentName = assignmentName;
    }

    public Date getAssignmentPbTime() {
        return assignmentPbTime;
    }

    public void setAssignmentPbTime(Date assignmentPbTime) {
        this.assignmentPbTime = assignmentPbTime;
    }

    public Date getAssignmentDeadLine() {
        return assignmentDeadLine;
    }

    public void setAssignmentDeadLine(Date assignmentDeadLine) {
        this.assignmentDeadLine = assignmentDeadLine;
    }

    public String getAssignmentPber() {
        return assignmentPber;
    }

    public void setAssignmentPber(String assignmentPber) {
        this.assignmentPber = assignmentPber;
    }

    public String getAssignmentChoice() {
        return assignmentChoice;
    }

    public void setAssignmentChoice(String assignmentChoice) {
        this.assignmentChoice = assignmentChoice;
    }

    public String getAssignmentShort() {
        return assignmentShort;
    }

    public void setAssignmentShort(String assignmentShort) {
        this.assignmentShort = assignmentShort;
    }
}

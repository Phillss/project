package com.Domains;

import java.io.Serializable;

public class OverView implements Serializable {
    private int countc;  //选择题目数量
    private int counts;  //简答题目数量
    private int subnm;   //提交数量
    private int sumnum;  //总人数
    private String[] questQc;    //题目ID
    private String[] questQs;
    private String[] corrateC;//选择特正确率
    private String[] corrateS;//简答题正确率

    public OverView(){

    }

    public OverView(int countc, int counts, int subnm, int sumnum, String[] questQc, String[] questQs, String[] corrateC, String[] corrateS) {
        this.countc = countc;
        this.counts = counts;
        this.subnm = subnm;
        this.sumnum = sumnum;
        this.questQc = questQc;
        this.questQs = questQs;
        this.corrateC = corrateC;
        this.corrateS = corrateS;
    }

    public String[] getCorrateC() {
        return corrateC;
    }

    public void setCorrateC(String[] corrateC) {
        this.corrateC = corrateC;
    }

    public String[] getCorrateS() {
        return corrateS;
    }

    public void setCorrateS(String[] corrateS) {
        this.corrateS = corrateS;
    }

    public int getCountc() {
        return countc;
    }

    public void setCountc(int countc) {
        this.countc = countc;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public int getSubnm() {
        return subnm;
    }

    public void setSubnm(int subnm) {
        this.subnm = subnm;
    }

    public int getSumnum() {
        return sumnum;
    }

    public void setSumnum(int sumnum) {
        this.sumnum = sumnum;
    }

    public String[] getQuestQc() {
        return questQc;
    }

    public void setQuestQc(String[] questQc) {
        this.questQc = questQc;
    }

    public String[] getQuestQs() {
        return questQs;
    }

    public void setQuestQs(String[] questQs) {
        this.questQs = questQs;
    }
}

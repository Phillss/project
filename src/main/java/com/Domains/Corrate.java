package com.Domains;

import java.io.Serializable;

public class Corrate implements Serializable {
    private int corrateId;
    private String corrateType;
    private String corrate;
    private String corrateRelate;
    private String corrateClass;

    public String getCorrateClass() {
        return corrateClass;
    }

    public void setCorrateClass(String corrateClass) {
        this.corrateClass = corrateClass;
    }

    public int getCorrateId() {
        return corrateId;
    }

    public void setCorrateId(int corrateId) {
        this.corrateId = corrateId;
    }

    public String getCorrateType() {
        return corrateType;
    }

    public void setCorrateType(String corrateType) {
        this.corrateType = corrateType;
    }

    public String getCorrate() {
        return corrate;
    }

    public void setCorrate(String corrate) {
        this.corrate = corrate;
    }

    public String getCorrateRelate() {
        return corrateRelate;
    }

    public void setCorrateRelate(String corrateRelate) {
        this.corrateRelate = corrateRelate;
    }
}

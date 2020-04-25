package com.Domains;

import java.io.Serializable;
import java.util.List;

public class messageBags implements Serializable {
    private  int noticesCount;
    private int feedBackCount;
    private int broadcastCount;
    private int systemCount;

    public int getNoticesCount() {
        return noticesCount;
    }

    public void setNoticesCount(int noticesCount) {
        this.noticesCount = noticesCount;
    }

    public int getFeedBackCount() {
        return feedBackCount;
    }

    public void setFeedBackCount(int feedBackCount) {
        this.feedBackCount = feedBackCount;
    }

    public int getBroadcastCount() {
        return broadcastCount;
    }

    public void setBroadcastCount(int broadcastCount) {
        this.broadcastCount = broadcastCount;
    }

    public int getSystemCount() {
        return systemCount;
    }

    public void setSystemCount(int systemCount) {
        this.systemCount = systemCount;
    }
}

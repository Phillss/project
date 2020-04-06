package com.Domains;

import java.io.Serializable;
import java.util.Date;

public class messageNotices implements Serializable {
    private int messageID;
    private String messageType;
    private String messageStatus;
    private String messageFrom;
    private String messageTo;
    private int message_exID;
    private String messageContent;
    private Date messageTime;

    public Date getMessageTime() {
        return messageTime;
    }

    public void setMessageTime(Date messageTime) {
        this.messageTime = messageTime;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public int getMessageID() {
        return messageID;
    }

    public void setMessageID(int messageID) {
        this.messageID = messageID;
    }

    public String getMessageType() {
        return messageType;
    }

    public void setMessageType(String messageType) {
        this.messageType = messageType;
    }

    public String getMessageStatus() {
        return messageStatus;
    }

    public void setMessageStatus(String messageStatus) {
        this.messageStatus = messageStatus;
    }

    public String getMessageFrom() {
        return messageFrom;
    }

    public void setMessageFrom(String messageFrom) {
        this.messageFrom = messageFrom;
    }

    public String getMessageTo() {
        return messageTo;
    }

    public void setMessageTo(String messageTo) {
        this.messageTo = messageTo;
    }

    public int getMessage_exID() {
        return message_exID;
    }

    public void setMessage_exID(int message_exID) {
        this.message_exID = message_exID;
    }
}

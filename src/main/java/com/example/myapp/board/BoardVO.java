package com.example.myapp.board;

import java.util.Date;

public class BoardVO {
    private int seq;
    private long daysRemaining;
    private String category;

    private String event;
    private String ffor;
    private String writer;
    private String memo;
    private String ddate;
    private Date regdate;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public long getDaysRemaining() {
        return daysRemaining;
    }

    public void setDaysRemaining(long daysRemaining) {
        this.daysRemaining = daysRemaining;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getFfor() {
        return ffor;
    }

    public void setFfor(String ffor) {
        this.ffor = ffor;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getDdate() {
        return ddate;
    }
    public void setDdate(String ddate) {
        this.ddate = ddate;
    }
    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}

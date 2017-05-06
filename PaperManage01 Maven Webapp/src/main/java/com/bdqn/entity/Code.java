package com.bdqn.entity;

import java.util.Date;

public class Code {
    private Long id;

    private Long code;

    private String codename;

    private String codetypename;

    private String parcode;

    private Long sequencenum;

    private String createdby;

    private Date creationdate;

    private String modifyby;

    private Date modifydate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCode() {
        return code;
    }

    public void setCode(Long code) {
        this.code = code;
    }

    public String getCodename() {
        return codename;
    }

    public void setCodename(String codename) {
        this.codename = codename == null ? null : codename.trim();
    }

    public String getCodetypename() {
        return codetypename;
    }

    public void setCodetypename(String codetypename) {
        this.codetypename = codetypename == null ? null : codetypename.trim();
    }

    public String getParcode() {
        return parcode;
    }

    public void setParcode(String parcode) {
        this.parcode = parcode == null ? null : parcode.trim();
    }

    public Long getSequencenum() {
        return sequencenum;
    }

    public void setSequencenum(Long sequencenum) {
        this.sequencenum = sequencenum;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby == null ? null : createdby.trim();
    }

    public Date getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(Date creationdate) {
        this.creationdate = creationdate;
    }

    public String getModifyby() {
        return modifyby;
    }

    public void setModifyby(String modifyby) {
        this.modifyby = modifyby == null ? null : modifyby.trim();
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }
}
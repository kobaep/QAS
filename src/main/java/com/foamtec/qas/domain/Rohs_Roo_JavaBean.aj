// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.qas.domain;

import com.foamtec.qas.domain.DocumentHistory;
import com.foamtec.qas.domain.Rohs;
import java.util.Date;
import java.util.Set;

privileged aspect Rohs_Roo_JavaBean {
    
    public String Rohs.getMatCode() {
        return this.matCode;
    }
    
    public void Rohs.setMatCode(String matCode) {
        this.matCode = matCode;
    }
    
    public String Rohs.getDescription() {
        return this.description;
    }
    
    public void Rohs.setDescription(String description) {
        this.description = description;
    }
    
    public Date Rohs.getStartDate() {
        return this.startDate;
    }
    
    public void Rohs.setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    
    public Date Rohs.getEndDate() {
        return this.endDate;
    }
    
    public void Rohs.setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    
    public String Rohs.getSpec() {
        return this.spec;
    }
    
    public void Rohs.setSpec(String spec) {
        this.spec = spec;
    }
    
    public String Rohs.getMsds() {
        return this.msds;
    }
    
    public void Rohs.setMsds(String msds) {
        this.msds = msds;
    }
    
    public String Rohs.getSendEmailTo() {
        return this.sendEmailTo;
    }
    
    public void Rohs.setSendEmailTo(String sendEmailTo) {
        this.sendEmailTo = sendEmailTo;
    }
    
    public String Rohs.getWorkflow() {
        return this.workflow;
    }
    
    public void Rohs.setWorkflow(String workflow) {
        this.workflow = workflow;
    }
    
    public String Rohs.getApprove1() {
        return this.approve1;
    }
    
    public void Rohs.setApprove1(String approve1) {
        this.approve1 = approve1;
    }
    
    public String Rohs.getApprove2() {
        return this.approve2;
    }
    
    public void Rohs.setApprove2(String approve2) {
        this.approve2 = approve2;
    }
    
    public Set<DocumentHistory> Rohs.getDocumentHistorys() {
        return this.documentHistorys;
    }
    
    public void Rohs.setDocumentHistorys(Set<DocumentHistory> documentHistorys) {
        this.documentHistorys = documentHistorys;
    }
    
}
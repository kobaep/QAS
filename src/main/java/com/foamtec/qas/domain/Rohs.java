package com.foamtec.qas.domain;
import com.foamtec.qas.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class Rohs extends BaseEntity {

    /**
     */
    @Column(unique = true)
    private String matCode;

    /**
     */
    private String description;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date startDate;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date endDate;

    /**
     */
    private String spec;

    /**
     */
    private String msds;

    /**
     */
    private String sendEmailTo;

    /**
     */
    private String workflow;

    /**
     */
    private String approve1;

    /**
     */
    private String approve2;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "rohs")
    private Set<DocumentHistory> documentHistorys = new HashSet<DocumentHistory>();
}

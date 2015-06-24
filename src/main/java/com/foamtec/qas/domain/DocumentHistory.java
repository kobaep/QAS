package com.foamtec.qas.domain;
import com.foamtec.qas.base.BaseEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS")
@RooJson(deepSerialize = true)
public class DocumentHistory extends BaseEntity {

    /**
     */
    private String actionBy;

    /**
     */
    private String actionType;

    /**
     */
    private String currentStatus;

    /**
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "rohs")
    private Rohs rohs;
}

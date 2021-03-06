package com.foamtec.qas.security;
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
@RooJpaActiveRecord(inheritanceType = "TABLE_PER_CLASS", finders = { "findAppUsersByUsernameEquals" })
@RooJson(deepSerialize = true)
public class AppUser extends BaseEntity {

    /**
     */
    private String username;

    /**
     */
    private String password;

    /**
     */
    private String name;

    /**
     */
    private Boolean enabled;

    /**
     */
    private Boolean needLogin;

    /**
     */
    private String userEmail;

    /**
     */
    private String departmentCode;

    /**
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "USERROLE")
    private AppRole userRole;
}

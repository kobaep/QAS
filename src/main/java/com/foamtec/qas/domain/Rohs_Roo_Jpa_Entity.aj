// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.qas.domain;

import com.foamtec.qas.domain.Rohs;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

privileged aspect Rohs_Roo_Jpa_Entity {
    
    declare @type: Rohs: @Entity;
    
    declare @type: Rohs: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
}

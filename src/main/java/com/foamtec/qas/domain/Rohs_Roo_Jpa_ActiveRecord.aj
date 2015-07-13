// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.qas.domain;

import com.foamtec.qas.domain.Rohs;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Rohs_Roo_Jpa_ActiveRecord {
    
    public static final List<String> Rohs.fieldNames4OrderClauseFilter = java.util.Arrays.asList("matCode", "description", "startDate", "endDate", "spec", "msds", "sendEmailTo", "workflow", "approve1", "approve2", "documentHistorys", "rohsDoc");
    
    public static long Rohs.countRohses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Rohs o", Long.class).getSingleResult();
    }
    
    public static List<Rohs> Rohs.findAllRohses() {
        return entityManager().createQuery("SELECT o FROM Rohs o", Rohs.class).getResultList();
    }
    
    public static List<Rohs> Rohs.findAllRohses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Rohs o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Rohs.class).getResultList();
    }
    
    public static Rohs Rohs.findRohs(Long id) {
        if (id == null) return null;
        return entityManager().find(Rohs.class, id);
    }
    
    public static List<Rohs> Rohs.findRohsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Rohs o", Rohs.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Rohs> Rohs.findRohsEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Rohs o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Rohs.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public Rohs Rohs.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Rohs merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

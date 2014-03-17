package com.idp.app.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class ModelBase {
    @Id
    @GeneratedValue
    private Integer id;
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    
    
    //Read link below for more information on why I decided to not override equals and hashcode
    //http://stackoverflow.com/questions/5031614/the-jpa-hashcode-equals-dilemma
    /*
    @Override
    public boolean equals(Object obj) {
        try { return id.equals(((ModelBase) obj).getId()); }
        catch (Exception exc) { return false; }
    }
    @Override
    public int hashCode() {
        return 31 + ((id == null) ? 0 : id.hashCode());
    }
	*/
}

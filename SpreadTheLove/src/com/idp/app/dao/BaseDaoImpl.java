package com.idp.app.dao;

import org.stripesstuff.stripersist.Stripersist;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.NonUniqueResultException;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import com.idp.app.dao.Dao;
import com.idp.app.model.User;

public abstract class BaseDaoImpl<T,ID extends Serializable>
    implements Dao<T,ID>
{
    private Class<T> entityClass;

    @SuppressWarnings("unchecked")
    public BaseDaoImpl() {
    	entityClass = (Class<T>)
            ((ParameterizedType) getClass().getGenericSuperclass())
            .getActualTypeArguments()[0];
    }

    @SuppressWarnings("unchecked")
    public List<T> read() {
        return Stripersist.getEntityManager()
            .createQuery("from " + entityClass.getName())
            .getResultList();
    }
    
    @SuppressWarnings("unchecked")
	public List<T> read(String columnName,String email) {
    	String pattern="";
        return Stripersist.getEntityManager()
            .createQuery("SELECT a FROM " +entityClass.getName() +" a WHERE a."+columnName+" = :columnName LIKE:"+ pattern)
            .setParameter("columnName", "email")
            .setParameter("pattern", "%" + email + "%")
            .getResultList();
    }
    
    @SuppressWarnings("unchecked")
 	public List<T> read(String columnName,User user) {
         return Stripersist.getEntityManager()
             .createQuery("SELECT a FROM " +entityClass.getName() +" a WHERE a."+columnName+" = :columnName")
             .setParameter("columnName", user)
             .getResultList();
    }
    
    @SuppressWarnings("unchecked")
	public List<String> read(String columnName) {
        return Stripersist.getEntityManager()
            .createQuery("SELECT " +columnName+" FROM " +entityClass.getName())
            .getResultList();
    }
    
    
    @SuppressWarnings("unchecked")
    public List<T> read(String columnName,int status) {
        return Stripersist.getEntityManager()
            .createQuery("SELECT a FROM " +entityClass.getName() +" a WHERE a."+columnName+" = :columnName")
            .setParameter("columnName", status)
            .getResultList();
    }
    @SuppressWarnings("unchecked")
	public List<T> read(String columnName,Integer ownerId, String columnName2, int type) {
        return Stripersist.getEntityManager()
            .createQuery("SELECT a FROM " +entityClass.getName() +" a WHERE a."+columnName+" = :columnName and a."+ columnName2 +" = :columnName2")
            .setParameter("columnName", ownerId)
            .setParameter("columnName2", type)
            .getResultList();
    }
    
 
    
    @SuppressWarnings("unchecked")
	public List<T> read(String columnName,Integer value, String columnName2, Integer value2, String columnName3, Integer value3) {
        return Stripersist.getEntityManager()
            .createQuery("SELECT a FROM " +entityClass.getName() +" a WHERE a."+columnName+" = :columnName and a."+ columnName2 +" = :columnName2 and a."+ columnName3 +" = :columnName3")
            .setParameter("columnName", value)
            .setParameter("columnName2", value2)
            .setParameter("columnName3", value3)
            .getResultList();
    }
    
    public T read(ID id) {
        return Stripersist.getEntityManager().find(entityClass, id);
    }
    
    @SuppressWarnings("unchecked")
    public void save(T object) {
        Stripersist.getEntityManager().persist(object);
    }
    public void update(T object) {
        Stripersist.getEntityManager().merge(object);
    }
    public void delete(T object) {
        Stripersist.getEntityManager().remove(object);
    }
    public void commit() {
        Stripersist.getEntityManager().getTransaction().commit();
    }
    
    @SuppressWarnings("unchecked")
    public void deleteAll(){
    	Stripersist.getEntityManager().createQuery("delete from " + entityClass.getName()).executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<T> findBy(String fieldName, Object value) {
    	
    	Query query = Stripersist.getEntityManager()
    			.createQuery(getQuery(fieldName, null ))
    			.setParameter(fieldName, value);
    	
        return query.getResultList();
    }
    
    private String getQuery(String fieldName, User user){
    	String query =
            "from " + entityClass.getName() + " t " +
            "where t." + fieldName + " = :" + fieldName;
        if (user == null) {
            return query;
        }
        return query + " and t.user = :user";
    }
    
    @SuppressWarnings("unchecked")
    private T getSingleResult(Query query) {
        try {
            return (T) query.getSingleResult();
        }
        catch (NonUniqueResultException exc) {
            return (T) query.getResultList().get(0);
        }
        catch (NoResultException exc) {
            return null;
        }
    }


}

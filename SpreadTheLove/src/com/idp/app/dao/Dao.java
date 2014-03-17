package com.idp.app.dao;

import java.io.Serializable;
import java.util.List;

public interface Dao<T,ID extends Serializable> {
    public List<T> read();
    public T read(ID id);
    public void save(T t);
    public void update(T t);
    public void delete(T t);
    public void commit();
    public void deleteAll();
}

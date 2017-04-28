package ${packageName};

import java.util.List;

/**
 * Generic and common repository for all network call
 */
public interface ${repositaryClass}<T> {

     T getById(int id);

     List<T> getAll();

    void save(T entity);

    void remove(T entity);

}
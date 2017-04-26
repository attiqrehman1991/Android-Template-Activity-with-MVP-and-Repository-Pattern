package ${packageName};

import java.util.List;

/**
 * A login screen that offers login via email/password.
 */
public interface ${repositaryClass}<T> {

     T getById(int id);

     List<T> getAll();

    void save(T entity);

    void remove(T entity);

}
package ${packageName};

import java.util.List;

/**
 * A Service (network class) implements Generic Repository
 * Use this class to write network call and for new method, create new class
 */
public class ${serviceClass} implements ${repositaryClass}<${modelClass}> {

@Override
    public ${modelClass} getById(int id) {
        return null;
    }

    @Override
    public List<${modelClass}> getAll() {
		// Implement network call
        return null;
    }

    @Override
    public void save(${modelClass} entity) {

    }

    @Override
    public void remove(${modelClass} entity) {

    }
}


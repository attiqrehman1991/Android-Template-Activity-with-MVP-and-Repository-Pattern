package ${packageName};

import java.util.ArrayList;
import java.util.List;

/**
 * A Presenter class to provide assistance to Activity class
 */
 
public class ${activityPresenter} {

public ${activityClass}View activityView;

public ${activityPresenter} (${activityClass}View activityView) {
this.activityView= activityView;
}

public void getList() {
${repositaryClass} repositaryClass= new ${serviceClass}();

activityView.showWait();

repositaryClass.getAll();

activityView.removeWait();
}
public void addItem() {

}

}
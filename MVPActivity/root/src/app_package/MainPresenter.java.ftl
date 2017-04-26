package ${packageName};


import java.util.ArrayList;
import java.util.List;


/**
 * A login screen that offers login via email/password.
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
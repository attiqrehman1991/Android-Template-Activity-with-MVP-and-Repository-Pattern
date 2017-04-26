package ${packageName};


import java.util.ArrayList;
import java.util.List;


/**
 * A login screen that offers login via email/password.
 */
public class ${activityPresenter} {

public ${serviceClass} serviceClass;
public ${activityClass}View activityView;

public ${activityPresenter} (${serviceClass} serviceClass, ${activityClass}View activityView) {
this.serviceClass= serviceClass;
this.activityView= activityView;
}

public void getList() {
activityView.showWait();

serviceClass.getAll();

activityView.removeWait();
}
public void addItem() {

}

}
package ${packageName};

import android.os.Bundle;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * A login screen that offers login via email/password.
 */
public class ${activityClass} extends ${superClass} implements ${activityClass}View{


    /**
     * Keep track of the login task to ensure we can cancel it if requested.
     */
    // UI references.

	private ${serviceClass} serviceClass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
<#if parentActivityClass != "">
        setupActionBar();
</#if>
renderView();
    }
	
	private void renderView() {
	        // Set up the widgets
	}
	
	private void createRequest() {
        serviceClass= new ${serviceClass}();
	${activityPresenter} activityPresenter= new ${activityPresenter}(serviceClass, this);
	activityPresenter.getList();
	}
	
	
    @Override
    public void showWait() {
        
    }

    @Override
    public void removeWait() {

    }
}


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
	
	// create network request 
	private void createRequest() {
	${activityPresenter} activityPresenter= new ${activityPresenter}(this);
	activityPresenter.getList();
	}
	
	// code to show progress bar	
    @Override
    public void showWait() {
        
    }

	// code to remove progress bar
    @Override
    public void removeWait() {

    }
}


/**
* 
* 
* MIT License
* 
* Copyright (c) 2017 Attiq ur Rehman
* 
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
* 
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
* 
*/

package ${packageName};

/**
 * Copyright (c) 2017.
 * Sample Project To Demostrate MVP for Login.
 * Developed by Attiq Ur Rehman
 * Senior Software Engineer
 * Systems Limited Lahore
 */

import ${superClassFqcn};
import android.os.Bundle;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

<#if includePermissionCheck>
import static android.Manifest.permission.READ_CONTACTS;
</#if>

/**
 * A login screen that offers login via email/password.
 */
public class ${activityClass} extends ${superClass} implements ${activityClass}View {


    /**
     * Keep track of the login task to ensure we can cancel it if requested.
     */
    // UI references.
    private TextView tv_response;
	private EditText ed_username;
	private EditText ed_password;
    private Button buttonSubmit;
	private View progress;
	private Context context;
	private ${activityPresenter} activityPresenter;

	    <#if parentActivityClass != "">
    /**
     * Set up the {@link android.app.ActionBar}, if the API is available.
     */
    @TargetApi(Build.VERSION_CODES.HONEYCOMB)
    private void setupActionBar() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
            // Show the Up button in the action bar.
            get${Support}ActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }
    </#if>
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
<#if parentActivityClass != "">
        setupActionBar();
</#if>
		initWidgets();
        initListener();
    }
	
	private void initWidgets() {
	    // Set up the widgets
		this.context = this;
		activityPresenter= new ${activityPresenter}(this);
		tv_response = (TextView) findViewById(R.id.tv_response);
        ed_username = (EditText) findViewById(R.id.ed_username);
        ed_password = (EditText) findViewById(R.id.ed_password);
        buttonSubmit = (Button) findViewById(R.id.buttonSubmit);
        progress = findViewById(R.id.progress);
	}
	
	private void initListener() {
	buttonSubmit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String username = ed_username.getText().toString();
                String password = ed_password.getText().toString();

                activityPresenter.onClick(username, password);
            }
        });
	}
	
	// response back from present layer
	@Override
	public void loginResponse(String message) {
		tv_response.setText(message);
	}
	
	// code to show progress bar	
    @Override
    public void showWait() {
        progress.setVisibility(View.VISIBLE);
		buttonSubmit.setEnabled(false);
    }

	// code to remove progress bar
    @Override
    public void removeWait() {
        progress.setVisibility(View.GONE);
		buttonSubmit.setEnabled(true);
    }
}


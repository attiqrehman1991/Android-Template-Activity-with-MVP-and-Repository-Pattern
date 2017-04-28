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

import android.os.Bundle;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * An Activity class that privode MVP implementation
 * Use createRequest method to create request
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
	
	// initlize the widgers
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


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


/**
 * A Presenter Layer to support respective activity class
 */
public class ${activityPresenter} implements ${activityPresenter}View {

	public ${activityClass}View activityView;

	public ${activityPresenter} (${activityClass}View activityView) {
		this.activityView= activityView;
	}

	public void performOperation(String name, String password) {
		// Show progress bar
		activityView.showWait();

		// perform operation
		activityView.loginResponse("Operation goes successful");

		// Hide ProgressBar
		activityView.removeWait();
	}

}
package ${packageName};


/**
 * An interface class for handle progress show/hide function in Activity
 */
public interface ${activityClass}View {

	// to show progress bar
	// calls when network call completed
    void showWait();
	
	// to hide progress bar
	// calls when network call completed
    void removeWait();
}
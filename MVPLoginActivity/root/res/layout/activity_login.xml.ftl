<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/activity_main"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:paddingBottom="@dimen/activity_vertical_margin"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    tools:context=".view.MainActivity">

    <TextView
        android:id="@+id/textViewU"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Enter User Name" />

    <EditText
        android:id="@+id/ed_username"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@+id/textViewU"
        android:inputType="textPersonName" />

    <TextView
        android:id="@+id/textViewP"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_below="@+id/ed_username"
        android:text="Enter Password" />

    <EditText
        android:id="@+id/ed_password"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@+id/textViewP"
        android:inputType="textPassword" />

    <Button
        android:id="@+id/buttonSubmit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_below="@+id/ed_password"
        android:layout_centerHorizontal="true"
        android:text="Log In" />

    <TextView
        android:id="@+id/tv_response"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_below="@+id/buttonSubmit"
        android:layout_centerHorizontal="true"
        android:layout_margin="15dp" />
		
</RelativeLayout>

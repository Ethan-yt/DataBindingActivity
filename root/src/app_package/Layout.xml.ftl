<?xml version="1.0" encoding="utf-8"?>
<layout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    tools:context="${relativePackage}.${activityClass}">

    <data>

        <variable
            name="viewModel"
            type="${packageName}.viewmodel.${activityClass?substring(0,activityClass?length-8)}ViewModel"/>
    </data>

    <android.support.constraint.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

    </android.support.constraint.ConstraintLayout>
</layout>
package ${packageName}.view;

import android.app.Activity;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.${layoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding;
import ${applicationPackage}.main.BaseActivity;
</#if>
import ${packageName}.viewmodel.${activityClass?substring(0,activityClass?length-8)}ViewModel;

public class ${activityClass} extends BaseActivity {

    private ${activityClass?substring(0,activityClass?length-8)}ViewModel mViewModel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ${layoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding    binding = 
DataBindingUtil.setContentView(this, R.layout.${layoutName});
        mViewModel = new ${activityClass?substring(0,activityClass?length-8)}ViewModel(this, binding);

<#include "../../../../common/jni_code_usage.java.ftl">
    }

    public static void start(Activity from) {
        Intent intent = new Intent(from, ${activityClass}.class);
        ActivityCompat.startActivity(from, intent, null);
    }

<#include "../../../../common/jni_code_snippet.java.ftl">
}

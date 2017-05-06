package ${packageName}.viewmodel;

import ${packageName}.view.${activityClass};
import ${applicationPackage}.databinding.${layoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding;

public class ${activityClass?substring(0,activityClass?length-8)}ViewModel {

    private ${activityClass} mActivity;
    private ${layoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding  mBinding;

    public ${activityClass?substring(0,activityClass?length-8)}ViewModel(${activityClass} activity, ${layoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding binding) {
        mActivity = activity;
        mBinding = binding;
        mBinding.setViewModel(this);
    }
}
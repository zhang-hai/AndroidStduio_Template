package ${packageName}.ui${childModuleName};

import android.os.Bundle;
import ${sxwBasePackageName}.ui.BaseActivity;
import ${packageName}.mvp.presenter${childModuleName}.${mvpFileName}Presenter;
import ${packageName}.mvp.view${childModuleName}.I${mvpFileName}View;

import ${packageName}.R;

import ${packageName}.di.component${childModuleName}.Dagger${mvpFileName}Component;
import ${sxwBasePackageName}.di.component.AppComponent;
import ${packageName}.di.module${childModuleName}.${mvpFileName}Module;



public class ${newActivityName} extends BaseActivity<${mvpFileName}Presenter> implements I${mvpFileName}View {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
    }
	
	@Override
    public void setupActivityComponent(AppComponent appComponent) {
        Dagger${mvpFileName}Component.builder()
                .appComponent(appComponent)
                .${mvpFileName?uncap_first}Module(new ${mvpFileName}Module(this))
                .build()
                .inject(this);
        
    }
}

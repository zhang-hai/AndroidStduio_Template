package ${escapeKotlinIdentifiers(packageName)}.ui${childModuleName}

import android.os.Bundle
import ${sxwBasePackageName}.ui.BaseActivity
import ${packageName}.mvp.presenter${childModuleName}.${mvpFileName}Presenter
import ${packageName}.mvp.view${childModuleName}.I${mvpFileName}View

import ${packageName}.R

import ${packageName}.di.component${childModuleName}.Dagger${mvpFileName}Component
import ${sxwBasePackageName}.di.component.AppComponent
import ${packageName}.di.module${childModuleName}.${mvpFileName}Module

class ${newActivityName} : BaseActivity<${mvpFileName}Presenter>(),I${mvpFileName}View {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})
</#if>
    }
	
	
    @Override fun setupActivityComponent(appComponent : AppComponent) {
        Dagger${mvpFileName}Component.builder()
                .appComponent(appComponent)
                .${mvpFileName?uncap_first}Module(${mvpFileName}Module(this))
                .build()
                .inject(this)
        
    }
}

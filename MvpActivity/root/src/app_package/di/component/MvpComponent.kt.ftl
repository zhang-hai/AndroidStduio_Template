package ${escapeKotlinIdentifiers(packageName)}.di.component${childModuleName}

import ${packageName}.di.module${childModuleName}.${mvpFileName}Module
import ${packageName}.ui${childModuleName}.${newActivityName}
import ${sxwBasePackageName}.di.scope.PerActivity
import dagger.Component
import ${sxwBasePackageName}.di.component.AppComponent

@PerActivity
@Component(modules=${mvpFileName}Module.class,dependencies = {AppComponent.class})
public interface ${mvpFileName}Component {
	void inject(${newActivityName} activity)
}
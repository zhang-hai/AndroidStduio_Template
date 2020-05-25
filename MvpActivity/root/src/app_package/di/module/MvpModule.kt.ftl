package ${escapeKotlinIdentifiers(packageName)}.di.module${childModuleName}


import ${sxwBasePackageName}.mvp.IViewAdvance

import ${packageName}.mvp.model${childModuleName}.I${mvpFileName}Model
import ${packageName}.mvp.model${childModuleName}.${mvpFileName}ModelImp
import ${packageName}.mvp.view${childModuleName}.I${mvpFileName}View
import dagger.Module
import dagger.Provides
import ${sxwBasePackageName}.di.scope.PerActivity

@Module
public class ${mvpFileName}Module(view:I${mvpFileName}View)  {

	var view:I${mvpFileName}View ?= null

	init{
		this.view = view
	}

	@PerActivity
	@Provides
	fun provide${mvpFileName}View():I${mvpFileName}View{
		return this.view
	}

	@PerActivity
	@Provides
	fun provide${mvpFileName}Model(model:${mvpFileName}ModelImp):I${mvpFileName}Model{
		return model
	}

}
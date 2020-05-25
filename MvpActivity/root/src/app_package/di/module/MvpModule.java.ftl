package ${packageName}.di.module${childModuleName};


import ${sxwBasePackageName}.mvp.IViewAdvance;

import ${packageName}.mvp.model${childModuleName}.I${mvpFileName}Model;
import ${packageName}.mvp.model${childModuleName}.${mvpFileName}ModelImp;
import ${packageName}.mvp.view${childModuleName}.I${mvpFileName}View;
import dagger.Module;
import dagger.Provides;
import ${sxwBasePackageName}.di.scope.PerActivity;

@Module
public class ${mvpFileName}Module  {

	private I${mvpFileName}View view;

	public ${mvpFileName}Module(I${mvpFileName}View view) {
		this.view = view;
	}

	@PerActivity
	@Provides
	I${mvpFileName}View provide${mvpFileName}View(){
		return this.view;
	}

	@PerActivity
	@Provides
	I${mvpFileName}Model provide${mvpFileName}Model(${mvpFileName}ModelImp model){
		return model;
	}

}
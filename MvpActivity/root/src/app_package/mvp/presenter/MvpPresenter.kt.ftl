package ${escapeKotlinIdentifiers(packageName)}.mvp.presenter${childModuleName}


import ${sxwBasePackageName}.mvp.BasePresenter;
import javax.inject.Inject;
import ${packageName}.mvp.view${childModuleName}.I${mvpFileName}View;
import ${packageName}.mvp.model${childModuleName}.I${mvpFileName}Model;

/**
 * A interface of mvp presenter's Presenter
 */
public class ${mvpFileName}Presenter<I${mvpFileName}Model,I${mvpFileName}View>(model:I${mvpFileName}Model,view:I${mvpFileName}View): BasePresenter(model,view){
	
	public boolean useEventBus(){
		return false;
	}
}
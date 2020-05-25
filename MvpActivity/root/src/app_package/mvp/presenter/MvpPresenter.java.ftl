package ${packageName}.mvp.presenter${childModuleName};

import ${sxwBasePackageName}.mvp.BasePresenter;
import javax.inject.Inject;
import ${packageName}.mvp.view${childModuleName}.I${mvpFileName}View;
import ${packageName}.mvp.model${childModuleName}.I${mvpFileName}Model;

/**
 * A interface of mvp presenter's Presenter
 */
public class ${mvpFileName}Presenter extends BasePresenter<I${mvpFileName}Model,I${mvpFileName}View>{
	@Inject
	public ${mvpFileName}Presenter(I${mvpFileName}Model model,I${mvpFileName}View view){
		 super(model,view);
	}
	
	public boolean useEventBus(){
		return false;
	}
}

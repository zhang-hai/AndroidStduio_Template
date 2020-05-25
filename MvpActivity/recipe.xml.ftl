<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

	<#if requireTheme!false>
    <#include "../common/recipe_theme.xml.ftl" />
    </#if>

    <#include "../common/recipe_manifest_strings.xml.ftl" />
	
	<merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <@kt.addAllKotlinDependencies />
<#if (mvpModuleName?trim?length > 0)>
	<instantiate from="root/src/app_package/ui/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${mvpModuleName?lower_case}/${newActivityName}.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/mvp/view/IMvpView.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/view/${mvpModuleName?lower_case}/I${mvpFileName}View.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/mvp/presenter/MvpPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/presenter/${mvpModuleName?lower_case}/${mvpFileName}Presenter.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/mvp/model/IMvpModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/model/${mvpModuleName?lower_case}/I${mvpFileName}Model.${ktOrJavaExt}" />	
				   
	<instantiate from="root/src/app_package/mvp/model/MvpModelImp.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/model/${mvpModuleName?lower_case}/${mvpFileName}ModelImp.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/di/module/MvpModule.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/module/${mvpModuleName?lower_case}/${mvpFileName}Module.${ktOrJavaExt}" />	
				   
	<instantiate from="root/src/app_package/di/component/MvpComponent.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/component/${mvpModuleName?lower_case}/${mvpFileName}Component.${ktOrJavaExt}" />	
<#else>
	<instantiate from="root/src/app_package/ui/MvpActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${newActivityName}.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/mvp/view/IMvpView.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/view/I${mvpFileName}View.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/mvp/presenter/MvpPresenter.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/presenter/${mvpFileName}Presenter.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/mvp/model/IMvpModel.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/model/I${mvpFileName}Model.${ktOrJavaExt}" />	
				   
	<instantiate from="root/src/app_package/mvp/model/MvpModelImp.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/mvp/model/${mvpFileName}ModelImp.${ktOrJavaExt}" />
				   
	<instantiate from="root/src/app_package/di/module/MvpModule.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/module/${mvpFileName}Module.${ktOrJavaExt}" />	
				   
	<instantiate from="root/src/app_package/di/component/MvpComponent.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/component/${mvpFileName}Component.${ktOrJavaExt}" />	
</#if>
    
<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${newActivityName}.${ktOrJavaExt}" />
</recipe>

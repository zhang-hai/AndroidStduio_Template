<?xml version="1.0"?>
<globals>
	<global id="sxwBasePackageName" type="string" value="cn.sxw.android.base"/>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="nativeSrcOut" value="${escapeXmlAttribute(projectOut)}/src/main/cpp" />

<#if (mvpModuleName?trim?length > 0)>
	<global id="childModuleName" type="string" value=".${mvpModuleName?trim?lower_case}"/>
<#else>
	<global id="childModuleName" type="string" value=""/>
</#if>

<#if (activityClass?lower_case?ends_with("activity"))>
	<global id="mvpFileName" type="string" value="${activityClass?replace('Activity','')?cap_first}"/>
	<global id="newActivityName" type="string" value="${activityClass?cap_first}" />
<#else>
	<global id="mvpFileName" type="string" value="${activityClass?cap_first}"/>
	<global id="newActivityName" type="string" value="${activityClass?cap_first}Activity" />
</#if>
	
	
	
    <#include "../common/common_globals.xml.ftl" />
</globals>

<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/MyTemplateActivity.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	
	<!-- 增加生成layout文件 generateLayout 是在template.xml定义的输入参数-->
	<#if generateLayout>
		<instantiate from="root/res/layout/activity_template.xml.ftl"
			   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    </#if>
</recipe>
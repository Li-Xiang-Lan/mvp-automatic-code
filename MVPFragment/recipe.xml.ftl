<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
  

<#if generateLayout>
    <instantiate from="root/res/layout/activity_mvp.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
</#if>

<#if generateMVP>

    <instantiate from="root/src/app_package/IContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${contractName}.kt" />

     <instantiate from="root/src/app_package/Model.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${modelName}.kt" />

     <instantiate from="root/src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
    
</#if>


<#if generateKotlin>
  
    <instantiate from="root/src/app_package/MVPFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />
</#if>

</recipe>

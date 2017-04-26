<!--
MIT License

Copyright (c) 2017 Attiq ur Rehman

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-->
<?xml version="1.0"?>
<recipe>
   <#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
    </#if>

    <#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:design'))>
        <dependency mavenUrl="com.android.support:design:${buildApi}.+" />
    </#if>

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/res/values/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />

    <merge from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="root/res/layout/activity_mvp.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/MVPActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
				   
	<instantiate from="root/src/app_package/MainView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}View.java" />

    <instantiate from="root/src/app_package/MainPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPresenter}.java" />

    <instantiate from="root/src/app_package/GenericRespositary.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${repositaryClass}.java" />

    <instantiate from="root/src/app_package/ServiceRespositary.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${serviceClass}.java" />

    <instantiate from="root/src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${repositaryClass}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${serviceClass}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${modelClass}.java" />

</recipe>

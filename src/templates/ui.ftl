<#---
  @namespace ui
-->


<#---
  @param class
-->
<#macro pageTitle class="">
  <h1 name class="${('page-title ' + class)?trim}"><#nested /></h1>
</#macro>


<#---
  @param class
-->
<#macro sectionTitle class="">
  <h1 class="${('section-title ' + class)?trim}"><#nested></h1>
</#macro>


<#---
  @param class
-->
<#macro sectionSubtitle class="">
  <h2 class="${('section-subtitle ' + class)?trim}"><#nested></h2>
</#macro>


<#---
  @param class
-->
<#macro sectionh3 class="">
  <h3 class="${('section-h3 ' + class)?trim}"><#nested></h3>
</#macro>


<#---
  @param title
  @param class
-->
<#macro note title="" class="">
  <p class="${('note ' + class)?trim}"><#t />
    <#if title?has_content>
      <strong class="note-title">${title}</strong><#t />
    </#if>
    <#nested />
  </p><#t />
</#macro>


<#---
  @param href
  @param class
-->
<#macro button href="" class="">
  <#local tag = "button" />

  <#if href?has_content>
    <#local tag = "a" />
  </#if>

  <${tag}<#if href?has_content> href="${href}"</#if> class="${('btn ' + class)?trim}"><#t />
    <#nested /><#t />
  </${tag}><#t />
</#macro>
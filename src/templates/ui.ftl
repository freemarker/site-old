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
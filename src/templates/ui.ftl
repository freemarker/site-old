<#---
  @namespace ui
-->


<#macro pageTitle class="">
  <h1 class="${('page-title ' + class)?trim}"><#nested /></h1>
</#macro>
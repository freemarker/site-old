<#---
  @namespace header
-->


<#---
  Page header
  @param primaryTab
  @param secondaryTab
-->
<#macro header primaryTab secondaryTab>
  <header class="page-header page-width">
    <div class="logo-row">
      <a class="logo-link" href="index.html" role="banner">&lt;FreeMarker&gt;</a>
      <@primaryNav primaryTab=primaryTab />
    </div>
    <@secondaryNav secondaryTab=secondaryTab />
  </header>
</#macro>


<#---
  @param primaryTab
-->
<#macro primaryNav primaryTab>
  <#-- List of primary navigation links -->
  <#local links = [
    {
      "title": "Home",
      "url": "index.html",
      "key": "index"
    }, {
      "title": "Manual",
      "url": "docs/index.html",
      "key": "manual"
    }, {
      "title": "Java API",
      "url": "docs/api/index.html",
      "key": "java-api"
    }
  ]/>

  <@_navigation links=links tab=primaryTab class="primary-nav" />
</#macro>


<#---
  @param secondaryTab
-->
<#macro secondaryNav secondaryTab>
  <#local links = [
    {
      "title": "Overview",
      "url": "index.html",
      "key": "overview"
    }, {
      "title": "Download FreeMarker",
      "url": "download.html",
      "key": "download",
      "class": "hidden-xs" <#-- show different link for non-mobile -->
    }, {
      "title": "Download",
      "url": "download.html",
      "key": "download",
      "class": "visible-xs" <#-- show different link for mobile -->
    }, {
      "title": "Features",
      "url": "features.html",
      "key": "features"
    }, {
      "title": "Editor/IDE plugins",
      "url": "editors.html",
      "key": "editors",
      "class": "hidden-xs" <#-- show different link for non-mobile -->
    }, {
      "title": "Plugins",
      "url": "editors.html",
      "key": "editors",
      "class": "visible-xs" <#-- show different link for mobile -->
    }, {
      "title": "FTL Libraries",
      "url": "libraries.html",
      "key": "libraries"
    }, {
      "title": "File generator tool (FMPP)",
      "url": "fmpp.html",
      "key": "fmpp",
      "class": "hidden-xs" <#-- show different link for non-mobile -->
    }, {
      "title": "FMPP",
      "url": "fmpp.html",
      "key": "fmpp",
      "class": "visible-xs" <#-- show different link for mobile -->
    }, {
      "title": "Powered by FreeMarker",
      "url": "powered-by-freemarker.html",
      "key": "powered-by"
    }<#--, {
      "title": "About us",
      "url": "about-us.html",
      "key": "about-us"
    }-->
  ]/>

  <@_navigation links=links tab=secondaryTab class="secondary-nav" />
</#macro>


<#---
  Navgation helper for primary and secondary navigations
  @param links
  @param tab
  @param class
-->
<#macro _navigation links tab class="">
  <nav class="header-nav ${class}" role="navigation"><#t />
    <ul><#t />
      <#list links as link>
        <#local linkClass = "" />
        <#if link.class??>
          <#local linkClass = link.class />
        </#if>
        <#if tab == link.key>
          <#local linkClass = linkClass + " active" />
        </#if>
        <li><a href="${link.url}"<#if linkClass?has_content> class="${linkClass}"</#if>>${link.title}</a></li><#t />
      </#list>
    </ul><#t />
  </nav><#t />
</#macro>
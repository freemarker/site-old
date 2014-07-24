<#import "toc.ftl" as toc />
<#global deployUrl = project_node.site.@deployUrl />
<!doctype html>
<html lang="en">
  <head prefix="og: http://ogp.me/ns#">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="Keywords" content="FreeMarker, template, templates, HTML, HTML template, page template, text, macro, macros, preprocessor, MVC, view, servlet, Java, free, open source, JSP, taglib, Velocity, WebMacro">
    <meta name="Description" content="Template engine for generating text (HTML, source code, e-mails, config files, etc.) that depends on changing data. MVC, highly configurable, macros, Free.">
    <meta name="verify-v1" content="OU7KNU7q+wGizVoaX/MNUo/tZ5o5RC06VfCjQIRRJu4=">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <meta property="og:title" content="${.node.page.@title?html} – FreeMarker Java Template Engine">
    <meta property="og:locale" content="en_US">
    <#--
    <meta property="og:url" content="${deployUrl}">
    <link rel="canonical" href="${deployUrl}">-->
    <title>${.node.page.@title?html} – FreeMarker Java Template Engine</title>
  </head>
  <body>
    <div class="page-wrapper">
      <#-- header -->
      <header class="page-header">
        <@header />
      </header>
      <#-- table of contents
      <nav class="table-of-contents" role="navigation">
        <#visit project_node using [toc] />
      </nav> -->

      <#-- content
      <main class="page-main" role="main">
        <h1 class="page-title">${.node.page.@title?html}</h1>
        <#recurse  using "content.ftl" />
      </main> -->

      <#-- footer
      <footer class="page-footer" role="contentinfo">
        <@footer />
      </footer> -->
    </div>
  </body>
</html>


<#macro header>
  <#assign logoImage = "logo_e0e0e0.png" />
  <a class="logo-link" href="${deployUrl?html}">FreeMarker</a>
  <@parentNav />
  <@sectionNav />
</#macro>

<#macro parentNav activeTab="Overview">
  <#local links = [
    { "title": "Overview",      "url": "index.html" },
    { "title": "Download",      "url": "freemarkerdownload.html" },
    { "title": "Documentation", "url": "docs/index.html" }
  ]/>

  <nav class="category-nav" role="navigation"><#t>
    <ul><#t>
      <#list links as link>
        <li><a href="${link.url}"<#if activeTab == link.title> class="active"</#if>>${link.title}</a></li><#t>
      </#list>
    </ul><#t>
  </nav><#t>
</#macro>

<#macro sectionNav activeTab="Overview">
  <#local links = [
    { "title": "Overview",      "url": "index.html" },
    { "title": "Features",      "url": "index.html" },
    { "title": "Report a bug",  "url": "index.html" },
    { "title": "Features",      "url": "index.html" }
  ]/>

  <nav class="section-nav" role="navigation"><#t>
    <ul><#t>
      <#list links as link>
        <li><a href="${link.url}"<#if activeTab == link.title> class="active"</#if>>${link.title}</a></li><#t>
      </#list>
    </ul><#t>
  </nav><#t>

</#macro>


<#macro footer>
  <div class="report">
    Found broken link or other problem with this site?<br>
    Report to: <a href="mailto:ddekanyREMOVEME@freemail.hu">ddekanyREMOVEME@freemail.hu</a><br>
    (remove the "REMOVEME" from the address)
  </div>

  <#setting time_zone = "GMT" />
  <#local timeStamp = properties.timeStamp?datetime("yyyy-MM-dd HH:mm:ss z") />
  <div class="copyright">
    Page last generated: <time datetime="${timeStamp?iso_utc}" title="${timeStamp?string.full}">${properties.timeStamp}</time><br>
    All content on this page is copyrighted by the FreeMarker project.<br>

    <#if !properties["site.offline"]??>
      <a href="http://sourceforge.net"><img src="http://sourceforge.net/sflogo.php?group_id=794&amp;type=1" alt="SourceForge Logo"></a>
    <#else>
      <a href="http://sourceforge.net"><img src="images/sflogo.png" alt="SourceForge Logo"></a>
    </#if>
    <#--<a href="${deployUrl?html}"><img src="images/${poweredbyImage}" alt="Powered by FreeMarker"></a>-->
  </div>
</#macro>
<#import "toc.ftl" as toc />
<#global deployUrl = project_node.site.@deployUrl />
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="Keywords" content="FreeMarker, template, templates, HTML, HTML template, page template, text, macro, macros, preprocessor, MVC, view, servlet, Java, free, open source, JSP, taglib, Velocity, WebMacro">
    <meta name="Description" content="Template engine for generating text (HTML, source code, e-mails, config files, etc.) that depends on changing data. MVC, highly configurable, macros, Free.">
    <meta name="verify-v1" content="OU7KNU7q+wGizVoaX/MNUo/tZ5o5RC06VfCjQIRRJu4=">
    <link rel="STYLESHEET" type="text/css" href="site.css">
    <title>FreeMarker Java Template Engine – ${.node.page.@title?html}</title>
  </head>
  <body>
    <#-- header -->
    <header class="page-header">
      <@header />
    </header>
    <div class="page-wrapper">
      <#-- table of contents -->
      <nav class="table-of-contents" role="navigation">
        <#visit project_node using [toc] />
      </nav>

      <#-- content -->
      <main class="page-main" role="main">
        <#-- title -->
        <h1 class="page-title">${.node.page.@title?html}</h1>
        <#recurse  using "content.ftl" />
      </main>
  
      <#-- footer -->
      <footer class="page-footer" role="contentinfo">
        <@footer />
      </footer>
    </div>
  </body>
</html>


<#macro header>
  <#assign logoImage = "logo_e0e0e0.png"]
  <#--<a href="${deployUrl?html}"><img src="images/${logoImage}" alt="FreeMarker logo"></a>-->
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
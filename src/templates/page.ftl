<#---
  @namespace page
-->

<#---
  @param title
-->
<#macro page title>
  <#compress>
    <!doctype html>
    <html lang="en">
      <head prefix="og: http://ogp.me/ns#">
        <meta charset="utf-8">
        <title>${title?xhtml} — FreeMarker Java Template Engine</title>
        <meta property="og:title" content="${title?xhtml}">
        <meta property="og:locale" content="en_US">
        <meta name="Keywords" content="FreeMarker, template, templates, HTML, HTML template, page template, text, macro, macros, preprocessor, MVC, view, servlet, Java, free, open source, JSP, taglib, Velocity, WebMacro">
        <meta name="Description" content="Template engine for generating text (HTML, source code, e-mails, config files, etc.) that depends on changing data. MVC, highly configurable, macros, Free.">
        <meta name="verify-v1" content="OU7KNU7q+wGizVoaX/MNUo/tZ5o5RC06VfCjQIRRJu4=">
      </head>
      <body>
        <#nested />
      </body>
    </html>
  </#compress>
</#macro>
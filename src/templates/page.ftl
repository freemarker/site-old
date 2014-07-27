<#ftl strip_text=true />

<#---
  @namespace page
-->

<#---
  @param title
-->
<#macro page title="">
  <@collectPage />
  <#compress>
    <!doctype html>
    <html lang="${pp.locale?substring(0, 2)}">
      <head prefix="og: http://ogp.me/ns#">
        <meta charset="utf-8">
        <title><#if title?has_content>${title} — </#if>FreeMarker Java Template Engine</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta property="og:title" content="<#if title?has_content>${title?xhtml}<#else>FreeMarker Java Template Engine</#if>">
        <meta property="og:locale" content="${pp.locale}">
        <meta name="Description" content="Template engine for generating text (HTML, source code, e-mails, config files, etc.) that depends on changing data. MVC, highly configurable, macros, Free.">
        <meta name="verify-v1" content="OU7KNU7q+wGizVoaX/MNUo/tZ5o5RC06VfCjQIRRJu4=">
        <link rel="stylesheet" href="${pp.pathTo('/css/styles.min.css')}?ts=${pp.now?long}" type="text/css">
      </head>
      <body>
        <#nested />
      </body>
    </html>
  </#compress>
</#macro>


<#---
  Collect all processed pages for use in sitemap
  @param title
-->
<#macro collectPage>
  <#if !pp.s.pages??>
    <@pp.set hash=pp.s key="pages" value=pp.newWritableSequence() />
  </#if>
  <@pp.add seq=pp.s.pages
      value={
        "url": pp.pathTo(pp.outputFile),
        "outputFile": pp.outputFile
      }/>
</#macro>
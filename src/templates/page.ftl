<#---
  @namespace page
-->


<#---
  Imports
-->
<#import "header.ftl" as header />
<#import "sidebar.ftl" as sidebar />

<#---
  @param title
  @param primaryTab
  @param secondaryTab
-->
<#macro page title="" primaryTab="index" secondaryTab="overview">
  <@collectPage />
  <#compress>
    <!doctype html>
    <html lang="${pp.locale?substring(0, 2)}">
      <head prefix="og: http://ogp.me/ns#">
        <meta charset="utf-8">
        <title><#if title?has_content>${title} — </#if>FreeMarker Java Template Engine</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="format-detection" content="telephone=no">
        <meta property="og:title" content="<#if title?has_content>${title?xhtml}<#else>FreeMarker Java Template Engine</#if>">
        <meta property="og:locale" content="${pp.locale}">
        <meta name="description" content="Template engine for generating text (HTML, source code, e-mails, config files, etc.) that depends on changing data. MVC, highly configurable, macros, Free.">
        <meta name="verify-v1" content="OU7KNU7q+wGizVoaX/MNUo/tZ5o5RC06VfCjQIRRJu4=">
        <link rel="stylesheet" href="${pp.pathTo('/css/styles.min.css')}?ts=${pp.now?long}" type="text/css">
      </head>
      <body>
        <@header.header primaryTab=primaryTab secondaryTab=secondaryTab />
        <div class="page-width main-wrapper">
          <@sidebar.sidebar />
          <main class="page-main" role="main"></#compress>
              <#nested />
            <#compress>
          </main>
        </div>
        <@footer />
      </body>
    </html>
  </#compress>
</#macro>


<#---
  Collect all processed pages for use in sitemap
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


<#---
  Page footer
-->
<#macro footer>
  <div class="page-width">
    <footer class="page-footer" role="contentinfo">
      <div class="footer-row">
        <ul class="legal-extra">
          <li>
            <a itemprop="license" rel="license" href="docs/app_license.html">License</a>
          </li>
          <li>
            <a href="about-us.html">About us</a>
          </li>
        </ul>
        <ul class="social-media-footer"><#t />
          <li><a class="twitter" href="https://twitter.com/freemarker">Twitter</a></li><#t />
          <li><a class="github" href="https://github.com/freemarker">Github</a></li><#t />
          <li><a class="stack-overflow" href="https://stackoverflow.com/questions/tagged/freemarker">Stack Overflow</a></li><#t />
        </ul><#t />
      </div>

      <p class="copyright">© 1999–${pp.now?string('YYYY')} The FreeMarker Project. All rights reserved.</p>
      <p class="last-updated">
        Page last generated: <time datetime="${pp.now?iso_utc}" title="${pp.now?string.full}">${pp.now}</time>
      </div>
      <#--
      <div class="last-updated">
        Page last generated: <time datetime="${pp.now?iso_utc}" title="${pp.now?string.full}">${pp.now}</time>
      </div>
      <div class="copyright">
        © 1999—${pp.now?string('YYYY')} The FreeMarker Project. All rights reserved.
      </div>
      -->
    </footer>
    </div>
</#macro>
<#---
  @namespace sidebar
-->


<#---
  Sidebar for page
-->
<#macro sidebar>
  <#-- @todo: Externalize links -->
  <ul class="sidebar" role="complementary">
    <li>Latest release
      <ul class="download-sidebar"><#t />
        <li><a class="icon-before icon-download" href="http://sourceforge.net/projects/freemarker/files/freemarker/2.3.20/freemarker-2.3.20.tar.gz/download">Download 2.3.20</a></li><#t />
        <li><a class="icon-before icon-change-log" href="http://freemarker.org/docs/versions_2_3_20.html">Changelog</a></li><#t />
      </ul><#t />
    </li>
    <li>
      Community
      <ul class="social-media-sidebar"><#t />
        <li><a class="icon-before icon-bug" href="http://sourceforge.net/p/freemarker/bugs/">Report a bug</a></li><#t />
        <li><a class="icon-before icon-stack-overflow" href="https://stackoverflow.com/questions/tagged/freemarker">Ask a question</a></li><#t />
        <li><a class="icon-before icon-mailing-list" href="http://sourceforge.net/p/freemarker/mailman/">Join a mailing list</a></li><#t />
      </ul><#t />
    </li>
    <li>
      Connect
      <ul class="social-media-sidebar"><#t />
        <li><a class="icon-before icon-twitter" href="https://twitter.com/freemarker">Twitter</a></li><#t />
        <li><a class="icon-before icon-github" href="https://github.com/freemarker">Github</a></li><#t />
        <li><a class="icon-before icon-sourceforge" href="http://sourceforge.net/projects/freemarker/">Sourceforge</a></li><#t />
      </ul><#t />
    </li>
  </ul>
</#macro>


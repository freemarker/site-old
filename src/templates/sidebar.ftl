<#---
  @namespace sidebar
-->


<#macro sidebar>
  <ul class="sidebar">
    <li>Latest release
      <ul class="download-sidebar"><#t />
        <li><a class="download" href="http://sourceforge.net/projects/freemarker/files/freemarker/2.3.20/freemarker-2.3.20.tar.gz/download">Download 2.3.20</a></li><#t />
        <li><a class="change-log" href="http://freemarker.org/docs/versions_2_3_20.html">Changelog</a></li><#t />
      </ul><#t />
    </li>
    <li>
      Connect
      <ul class="social-media-sidebar"><#t />
        <li><a class="bug" href="http://sourceforge.net/p/freemarker/bugs/">Report a bug</a></li><#t />
        <li><a class="twitter" href="https://twitter.com/freemarker">Twitter</a></li><#t />
        <li><a class="github" href="https://github.com/freemarker">Github</a></li><#t />
        <li><a class="stack-overflow" href="https://stackoverflow.com/questions/tagged/freemarker">Stack Overflow</a></li><#t />
        <li><a class="mailing-list" href="http://sourceforge.net/p/freemarker/mailman/">Mailing lists</a></li><#t />
      </ul><#t />
    </li>
  </ul>
</#macro>


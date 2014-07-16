[#ftl]
[#assign logoImage = "logo_e0e0e0.png"]

[#-- The following macros are used in recursive processing. --]

[#macro @element][#recurse ][/#macro]

[#macro group]
  [#local title = ""]
  [#if properties["site.offline"]?? && .node.@offlineName?has_content]
    [#local title = .node.@offlineName]
  [#else]
    [#local title = .node.@name]
  [/#if]

  <ul>
    <li>${title?html}
      <ul>
        [#recurse ]
      </ul>
    </li>
  </ul>
[/#macro]

[#macro item]
  [#local title = ""]
  [#if properties["site.offline"]?? && .node.@offlineName?has_content]
    [#local title = .node.@offlineName]
  [#else]
    [#local title = .node.@name]
  [/#if]

  <li>
    <a class="nav" href="${.node.@url?html}">[#if title?starts_with('#noescape:')]${title?string[10..]}[#else]${title?html}[/#if]</a>
  </li>

[/#macro]

[#macro site]
  <a href="${.node.@deployUrl?html}"><img border="0" src="images/${logoImage}" alt="FreeMarker logo"></a><br>

  [#-- navigation groups --]
  [#recurse ]
[/#macro]



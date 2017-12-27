<!doctype html>
<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 9 ]>
<html lang="$ContentLocale" class="ie9"><![endif]-->
<head>
  <% base_tag %>
  <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
  $MetaTags(false)
  <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0"/>
  <link rel="shortcut icon" href="{$ThemeDir}/icons/favicon.ico"/>
  <%-- <% include GoogleAnalytics %> --%>
</head>
<body class="">
  <div class="wrapper" id="app">
    <main id="main" class="main">
      $Layout
    </main>
  </div>
</body>
</html>

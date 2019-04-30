<#if theme_display.getThemeSetting("enable-piwik") == "true">
    <#assign siteId = theme_display.getThemeSetting("piwik-site-id") />

    <!-- Piwik -->
    <script type="text/javascript">
        var _paq = _paq || [];
        _paq.push(["trackPageView"]);
        _paq.push(["enableLinkTracking"]);
        (function() {
                var a = (("https:" == document.location.protocol) ? "https" : "http") + "://piwik-ext.vgregion.se/";
                _paq.push(["setTrackerUrl", a + "piwik.php"]);
                _paq.push(["setSiteId", '${siteId}']);
                var e = document
                    , c = e.createElement("script")
                    , b = e.getElementsByTagName("script")[0];
                c.type = "text/javascript";
                c.defer = true;
                c.async = true;
                c.src = a + "piwik.js";
                b.parentNode.insertBefore(c, b)
            }
        )();
    </script>
    <noscript>
        <p>
            <img src="http://piwik-ext.vgregion.se/piwik.php?idsite=${siteId}" style="border:0;" alt=""/>
        </p>
    </noscript>
    <!-- End Piwik Code -->

    <!-- Matomo -->
    <#--<script type="text/javascript">
        var _paq = _paq || [];
        /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function() {
            var u="//piwik.vgregion.se/";
            _paq.push(['setTrackerUrl', u+'piwik.php']);
            _paq.push(['setSiteId', '${siteId}']);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
            g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
        })();
    </script>-->
    <!-- End Matomo Code -->
</#if>

 { pkgs, ... }:

{
 
 programs.firefox = {
    enable = true;

    profiles.default = {
      id = 0;
      name = "default";

      search = {
        default = "SearXNG";
        engines = {
          "SearXNG" = {
            urls = [{
              template = "https://searxng.dxc-0.fr/search";
              params = [
                { name = "q"; value = "{searchTerms}"; }
              ];
            }];
            icon = "https://searxng.dxc-0.fr/favicon.ico";
            definedAliases = [ "@sx" ];
          };
        };
      };

      settings = {
        "browser.startup.homepage" = "https://searxng.dxc-0.fr";
        "browser.startup.page" = 1;
        "cookiebanners.service.mode.privateBrowsing" = 2;
        "cookiebanners.service.mode" = 2;
        "network.cookie.lifetimePolicy" = 2;
        "privacy.clearOnShutdown.cookies" = true;
        "privacy.clearOnShutdown.history" = true;
        "privacy.donottrackheader.enabled" = true;
        "privacy.trackingprotection.enabled" = true;
        "privacy.trackingprotection.fingerprinting.enabled" = true;
        "privacy.trackingprotection.emailtracking.enabled" = true;
        "privacy.trackingprotection.socialtracking.enabled" = true;
        "privacy.fingerprintingProtection" = true;
        "privacy.resistFingerprinting" = true;
        "privacy.resistFingerprinting.block_mozAddonManager" = true;
        "privacy.resistFingerprinting.letterboxing" = false;
        "privacy.firstparty.isolate" = true;
        "privacy.firstparty.isolate.block_post_message" = true;
        "dom.security.https_only_mode" = true;
        "security.ssl.require_safe_negotiation" = true;
        "security.tls.version.min" = 3;
        "security.tls.version.max" = 4;
        "browser.cache.disk.enable" = false;
        "browser.cache.memory.enable" = true;
        "browser.cache.offline.enable" = false;
        "browser.formfill.enable" = false;
        "browser.safebrowsing.downloads.remote.enabled" = false;
        "browser.safebrowsing.malware.enabled" = false;
        "browser.safebrowsing.phishing.enabled" = false;
        "webgl.disabled" = true;
        "media.peerconnection.enabled" = false;
        "beacon.enabled" = false;
        "network.http.sendRefererHeader" = 0;
        "network.dns.disablePrefetch" = true;
        "network.prefetch-next" = false;
        "network.IDN_show_punycode" = true;
        "dom.event.clipboardevents.enabled" = false;
      };
    };
  };

}
name             'rs_dns_cache'
maintainer       'RightScale Inc'
maintainer_email 'premium@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rs_dns_cache'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rightscale"
depends "sys_firewall"
depends "dns_cache"
depends "resolver"

recipe "rs_dns_cache::default", "RightScale DNS Cache"
recipe "rs_dns_cache::client", "sets up the resolv.conf"

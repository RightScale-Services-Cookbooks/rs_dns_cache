name             'rsc_dns_cache'
maintainer       'RightScale Inc'
maintainer_email 'premium@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rs_dns_cache'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'

depends "dns_cache"
depends "resolver"

recipe "rs_dns_cache::default", "RightScale DNS Cache"
recipe "rs_dns_cache::client", "sets up the resolv.conf"


attribute "resolver",
  :display_name => "Resolver",
  :description => "Hash of Resolver attributes",
  :type => "hash"

attribute "resolver/search",
  :display_name => "Resolver Search",
  :description => "Default domain to search",
  :default => "domain"

attribute "resolver/nameservers",
  :display_name => "Resolver Nameservers",
  :description => "Default nameservers",
  :type => "array",
  :default => []

attribute "resolver/options",
  :display_name => "Resolver Options",
  :description => "Default resolver options",
  :type => "hash",
  :default => {}

attribute "resolver/server_role",
  :display_name => "Resolver Server Role",
  :description => "Name of the role applied to the DNS resolver node",
  :type => "string",
  :default => "nameserver"

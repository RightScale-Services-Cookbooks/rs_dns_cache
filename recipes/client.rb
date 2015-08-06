rightscale_marker :begin

log "NameServers: #{node['resolver']['nameservers'].join(',').to_s}"
log "including recipe resolver::default"

include_recipe "resolver::default"

rightscale_marker :end

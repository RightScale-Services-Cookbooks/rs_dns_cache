rightscale_marker :begin

results = rightscale_server_collection "dns_cache" do
  tags ["dns_cache:server=true"]
  mandatory_tags ["server:private_ip_0=*"]
  empty_ok false
  action :nothing
end

results.run_action(:load)
if node["server_collection"]["redis_master"]
  log "Server Collection Found"
  node["server_collection"]["redis_master"].to_hash.values.each do |tags|
    node[:resolver][:nameservers]<<RightScale::Utils::Helper.get_tag_value("server:private_ip_0", tags)
  end
end

log "including recipe resolver::default"

include_recipe "resolver::default"

rightscale_marker :end

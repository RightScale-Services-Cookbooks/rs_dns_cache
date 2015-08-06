default['resolver']['nameservers']=[]
case node['cloud']['provider']
when "ec2"
  Chef::Log.info "EC2"
  default['resolver']['search']+=" ec2.internal us-west-2.compute.internal"
  default['resolver']['nameservers'] <<"172.16.0.23"
when "google"
  Chef::Log.info "google"
  default['resolver']['search']+=" google.internal"
  default['resolver']['nameservers'] <<"169.254.169.254"
end

Chef::Log.info "Search: #{node['resolver']['search']}"
Chef::Log.info "Name Server Array #{node['resolver']['nameservers'].join(',').to_s}"

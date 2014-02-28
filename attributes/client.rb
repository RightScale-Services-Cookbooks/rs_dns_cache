case node[:cloud][:provider]
when "ec2"
  default[:resolver][:search]+=" ec2.internal us-west-2.compute.internal"
  default[:resolver][:nameserver]<<"172.16.0.23"
when "google"
  Chef::Log.info "google"
  default[:resolver][:search]+=" google.internal"
  default[:resolver][:nameserver]<<"169.254.169.254"
end

Chef::Log.info "Name Server Array #{node[:resolver][:nameserver].join(',').to_s}"

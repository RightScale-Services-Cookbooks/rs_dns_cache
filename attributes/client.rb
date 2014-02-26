case node[:cloud][:provider]
when "ec2"
  default[:resolver][:search]+=" ec2.internal"
when "google"
  Chef::Log.info "google"
end

#
# Cookbook Name:: berkshelf-api
# Recipe:: upstart
#

# Install Upstart script
template 'berks-api.upstart.conf' do
  path '/etc/init/berks-api.conf'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'berks-api' do
  provider Chef::Provider::Service::Upstart
  supports :restart => true, :start => true, :stop => true
  action [ :enable, :start ]
end

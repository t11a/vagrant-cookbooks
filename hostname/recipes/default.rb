puts "**** Start host settings"
puts hostname = "Cupertino" + "-" + node[:ipaddress].gsub(/[ _\.]/, "-")
template "/etc/hosts" do
  source "hosts.erb"
  owner  "root"
  group  "root"
  mode   0644
  variables(:hostname => hostname)
end

template "/etc/hostname" do
  source "hostname.erb"
  owner  "root"
  group  "root"
  mode   0644
  variables(:hostname => hostname)
end

execute "setting_hostname" do
  command "hostname #{hostname}"
end
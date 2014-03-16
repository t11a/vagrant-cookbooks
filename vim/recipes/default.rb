package "vim" do
  action :install
end

### editor exchange nano to vim
link "/etc/alternatives/editor" do
  to "/usr/bin/vim"
end

template "/home/vagrant/.vimrc" do
  source  "vimrc.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end
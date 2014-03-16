%w(build-essential 
  language-pack-en
  language-pack-ja
  git-core
  libxml2-dev
  libxslt-dev
  libmysqlclient-dev
  imagemagick
  graphicsmagick-libmagick-dev-compat
  libmagickwand-dev
  curl
  wget
  tree
  sysv-rc-conf).each do |pkg|
  package pkg do
    action :install
  end
end

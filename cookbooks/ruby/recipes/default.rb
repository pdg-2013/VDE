include_recipe "apt"
include_recipe "build-essential"

package "curl"
package "libyaml-dev"
package "libsqlite3-dev"
package "sqlite3"
package "libgdbm-dev"
package "libncurses5-dev"
package "libtool"
package "pkg-config"
package "libffi-dev"
package "libxml2-dev"
package "libxslt1-dev"

bash "install ruby via rvm" do
  user node[:ruby][:user]
  code <<-CODE
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install #{node[:ruby][:version]}
rvm use #{node[:ruby][:version]} --default
CODE
  environment({ 'HOME' => node[:ruby][:home], 'USER' => node[:ruby][:user] })
  not_if do
    `ls #{node[:ruby][:home]}`.include?("rvm") &&
    `find #{node[:ruby][:home]}/.rvm/ | grep ruby-`.include?(node[:ruby][:version])
  end
end

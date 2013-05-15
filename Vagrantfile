Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.forward_port 3000, 3000
  config.vm.network :hostonly, "33.33.33.33"
  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

  config.vm.provision :chef_solo, :run_list => ["recipe[application]"] do |chef|
    chef.json.merge!({
      :ruby  => { :version  => "1.9.3-p286" },
      :rails => { :app_name => "recognizer",
                  :version  => "3.2.3",
                  :db_type  => "postgresql" }
    })
  end
end

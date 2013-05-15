### 1. Install [VirtualBox 4.2.0](https://www.virtualbox.org/wiki/Download_Old_Builds_4_2)
### 2. Install [Vagrant 1.0.5](http://downloads.vagrantup.com/tags/v1.0.5)
### 3. Install [Git](https://help.github.com/articles/set-up-git)
or if Ruby is installed on your computer y can try

`$ gem install vagrant`

### 4. Up application
* Go to working directory. Example:  `$ cd /home/user/path/`
* Clone VDE project `$ git clone git@github.com:WebUI-Dp-032/VDE.git`
* Go to VDE dir `$ cd VDE/`
* Run vagrant `$ vagrant up`
* Open VirtualBox via SSH `vagrant ssh`
  
### 5. Change Git settings
Set your name and email

`$ git config --global user.name "your name"`

`$ git config --global user.email your email`


### 6. Add existing module
`git submodule init`

`git submodule update`

`cd restaurant_software/`

`git merge origin/master`

`git checkout master`
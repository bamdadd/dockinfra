VAGRAN_API_VERSION = '2'

Vagrant.configure(VAGRAN_API_VERSION ) do | config |
  config.vm.define 'lb' do |v|
    v.vm.provider 'docker' do |d|
      d.cmd       = ['/sbin/my_init', '--enable-insecure-key']
      d.image     = 'bamdad/chef'
      d.has_ssh   = true
    end
    v.ssh.username = 'root'
    v.ssh.private_key_path = 'phusion.key'
    v.vm.synced_folder './chef', '/chef'
    v.vm.provision 'shell', inline: 'chef-solo -c /chef/solo.rb'
  end
end


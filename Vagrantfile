VAGRAN_API_VERSION = '2'

Vagrant.configure(VAGRAN_API_VERSION ) do | config |
  config.vm.define 'lb' do |v|
    v.vm.provider 'docker' do |d|
      d.cmd       = ['/sbin/my_init', '--enable-insecure-key']
      d.image     = 'phusion/baseimage'
      d.has_ssh   = true
    end
    v.ssh.username = 'root'
    v.ssh.private_key_path = 'phusion.key'
    
    v.vm.provision 'shell', inline: 'echo Hello'
#    v.vm.synched_folder './keys', '/vagrant'
  end
end


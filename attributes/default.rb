if node['platform_version'].split('.')[1].to_i > 5 && node['kernel']['machine'] == 'x86_64'
  default['alfred']['version'] = '2.7.1_387'
  default['alfred']['checksum'] = 'a3738d0513d736918a6d71535ef3d85dd184af267c05698e49ac4c6b48f38e17'
  default['alfred']['appname'] = 'Alfred 2.app'
else
  raise "Unsupported platform version #{node['platform_version']}, kernel: #{node['kernel']['machine']}. Please review the cookbook requirements."
end

if node['platform_version'].split('.')[1].to_i > 5 && node['kernel']['machine'] == 'x86_64'
  default['alfred']['version'] = '2.6_374'
  default['alfred']['checksum'] = 'cc9f8791454056bcd0cd9ac94ae3604aa2bda4014a453c3e0cf5818a18a85eee'
  default['alfred']['appname'] = 'Alfred 2.app'
else
  raise "Unsupported platform version #{node['platform_version']}, kernel: #{node['kernel']['machine']}. Please review the cookbook requirements."
end

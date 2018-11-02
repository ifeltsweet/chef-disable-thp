template '/etc/systemd/system/disable-thp.service' do
    source 'disable-thp.service.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :reload, 'service[disable-thp]', :delayed
end

template '/usr/bin/disable-thp' do
	source 'disable-thp.erb'
	owner 'root'
	group 'root'
	mode '0755'
    notifies :reload, 'service[disable-thp]', :delayed
end

service 'disable-thp' do
  action [:enable, :start]
end

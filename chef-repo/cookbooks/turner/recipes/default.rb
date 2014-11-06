#
# Cookbook Name:: turner
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/etc/httpd/htdocs' do
	owner 'root'
	group 'root'
	mode '0755'
	action	:create
end

cookbook_file '/etc/httpd/htdocs/turner.jpg' do
  source '/turner.jpg'
  mode '0444'
end

template '/etc/httpd/htdocs/index.html' do
  source 'index.html.erb'
  mode '0444'
end


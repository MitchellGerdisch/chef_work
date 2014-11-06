#
# Cookbook Name:: webgreeter
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

template '/etc/httpd/htdocs/index.html' do
  source 'index.html.erb'
end


#
# Cookbook Name:: hooch
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/etc/apache2/htdocs' do
	owner 'root'
	group 'root'
	mode '0755'
	action	:create
end

cookbook_file '/etc/apache2/htdocs/hooch.jpg' do
  source '/hooch.jpg'
  mode '0444'
end

template '/etc/apache2/htdocs/index.html' do
  source 'index.html.erb'
  mode '0444'
end


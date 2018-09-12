#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package 'install apache' do
 package_name 'apacke2'
end

cookbook_file  '/etc/apache2/ports.conf' do
source 'ports.conf'
end


service 'apache2' do
 action [:enable, :start]
end

#this eg to include other scripts
include_recipe 'apache2::restart'

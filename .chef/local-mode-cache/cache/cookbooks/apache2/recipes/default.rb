#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package 'install apache' do
 package_name 'apacke2'
end

service 'apache2' do
 action [:enable, :start]
end


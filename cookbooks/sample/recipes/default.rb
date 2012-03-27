#
# Cookbook Name:: sample
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

::Chef::Recipe.send(:include, MyExampleLibrary)
my_function()
print_node()

all_customers do |name, info|
    directory info[:webdir] do
        owner "vagrant"
        group "vagrant"
        recursive true
        action :create
    end
end


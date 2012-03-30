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

node.default[:myattribute][:myvalue] = "in ../cookbook/sample/recipe/default.rb"
print_node(node[:myattribute])

if node.attribute?(:myattribute)
    Chef::Log.info ":myattribute is exists!"
end

all_customers do |name, info|
    directory info[:webdir] do
        owner "vagrant"
        group "vagrant"
        recursive true
        action :create
    end
end


#
# Cookbook:: ServerX4
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'chocolatey::default'

file 'C:\TestFile.txt'

chocolatey_package 'git' do
  options '--params /GitAndUnixToolsOnPath'
end

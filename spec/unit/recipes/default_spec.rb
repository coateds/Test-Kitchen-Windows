#
# Cookbook:: ServerX4
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'ServerX4::default' do
  context 'windows' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'creates a file with the default action' do
      expect(chef_run).to create_file('C:\TestFile.txt')
    end

    it 'installs a specific version of a package with options' do
      expect(chef_run).to install_chocolatey_package('git').with(
        options: '--params /GitAndUnixToolsOnPath'
      )
    end

  end
end

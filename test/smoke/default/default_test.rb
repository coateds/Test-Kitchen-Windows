# # encoding: utf-8

# Inspec test for recipe ServerX4::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe file('C:\TestFile.txt') do
  it { should exist }
end

# This test does not work for Chocolatey!!
# describe chcolatey_package('git') do
#   it { should be_installed }
# end

require 'spec_helper'

describe 'oauth2_proxy::default' do
  describe file('/usr/local/oauth2_proxy/oauth2_proxy') do
    it { should be_file }
  end

  describe file('/etc/oauth2_proxy/default.cfg') do
    it { should be_file }
  end

  describe file('/etc/init/oauth2_proxy-default.conf') do
    it { should be_file }
  end

  describe service('oauth2_proxy-default') do
    it { should be_enabled }
    it { should be_running}
  end
end

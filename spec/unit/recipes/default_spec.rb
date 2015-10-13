#!/usr/bin/env ruby
#
# Tests for 'oauth2_proxy::default' Recipe.
#
# Cookbook:: oauth2_proxy
# Author:: Mike Juarez <mike@orionlabs.co>
# License:: Apache License, Version 2.0
# Source:: https://github.com/orion-cookbooks/oauth2_proxy
#

Apache License, Version 2.0

require 'spec_helper'

describe 'oauth2_proxy::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end
  end
end

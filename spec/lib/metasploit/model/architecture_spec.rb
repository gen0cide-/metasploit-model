require 'spec_helper'

describe Metasploit::Model::Architecture do
  it_should_behave_like 'Metasploit::Model::Architecture' do
    subject(:architecture) do
      Dummy::Architecture.new
    end
  end
end
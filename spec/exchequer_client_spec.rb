require 'spec_helper'

RSpec.describe ExchequerClient do
  it 'has a version number' do
    expect(ExchequerClient::VERSION).not_to be nil
  end
end

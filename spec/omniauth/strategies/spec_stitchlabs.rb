require 'spec_helper'

describe OmniAuth::Strategies::StitchLabs do
  subject do
    OmniAuth::Strategies::StitchLabs.new({})
  end

  context 'client_options' do
    it 'should have the correct name' do
      subject.options.name.should eq('stitchlabs')
    end

    it 'should have the correct site' do
      subject.options.client_options.site.should
      eq('https://api-pub.stitchlabs.com')
    end

    it 'should have the correct token_url' do
      subject.options.client_options.token_url.should
      eq('https://api-pub.stitchlabs.com/oauth/token')
    end
  end
end

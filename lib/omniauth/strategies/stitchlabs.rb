require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    # Stitch Labs
    class StitchLabs < OmniAuth::Strategies::OAuth2
      option :name, 'stitchlabs'

      option :client_options, {
        :site => 'https://api-pub.stitchlabs.com',
        :autorize_url => '/authorize',
        :token_url => '/oauth/token'
      }
=begin
      uid { raw_info["id"] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email'],
          :username => raw_info['username']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/users/me').parsed
      end
=end
    end
  end
end

OmniAuth.config.add_camelization 'stitchlabs', 'StitchLabs'

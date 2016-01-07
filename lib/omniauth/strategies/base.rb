require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Base < OmniAuth::Strategies::OAuth2
      option :name, "base"

      option :client_options, {
               :site => "https://api.getbase.com",
               :authorize_url => 'https://api.getbase.com/oauth2/authorize',
               :token_url => 'https://api.getbase.com/oauth2/token'
             }

      uid{ raw_info['data']['id'] }

      info do
        {
          :name => raw_info['data']['name'],
          :email => raw_info['data']['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/v2/users/self').parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Taobao < OmniAuth::Strategies::OAuth2
      option :name, 'taobao'
      option :client_options, {
        :site           => "https://oauth.taobao.com",
        :authorize_url  => "/authorize",
        :token_url      => "/token"
      }
      option :token_params, {
        :parse          => :json
      }

      uid do
        raw_info['taobao_user_id'].to_i
      end

      info do
        {
          :id     => raw_info['taobao_user_id'].to_i,
          :name   => raw_info['taobao_user_nick'],
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.params
      end

    end
  end
end

OmniAuth.config.add_camelization "taobao", "Taobao"

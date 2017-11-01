require 'faraday_middleware'

module ExchequerClient
  class BaseClient
    def initialize(options = {})
      @api_key = options[:api_key]
    end

    def post(path, _headers = {})
      connection.post(path)
    end

    def get(path, _headers = {})
      connection.get(path)
    end

    private def headers
      {
        Authorization: "Bearer #{@api_key}",
        'Content-Type' => 'application/json'
      }
    end

    private def connection
      Faraday.new(url: ExchequerClient::Config.base_api_url, headers: headers) do |builder|
        builder.request  :json
        builder.adapter  :net_http
      end
    end
  end
end

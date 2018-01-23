module ExchequerClient
  class URL
    class << self
      def visitors
        "#{ExchequerClient::Config.base_url}/"
      end

      def offers_show(offer_id, public_token: nil)
        "#{ExchequerClient::Config.base_url}/offers/#{offer_id}?public_token=#{public_token}"
      end
    end
  end
end

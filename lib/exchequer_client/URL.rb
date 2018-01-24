module ExchequerClient
  class URL
    class << self
      def visitors
        "#{ExchequerClient::Config.base_url}/"
      end

      def offers_show(offer_id, manager_public_token)
        "#{ExchequerClient::Config.base_url}/offers/#{offer_id}?public_token=#{manager_public_token}"
      end
    end
  end
end

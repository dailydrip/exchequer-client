module ExchequerClient
  module Iframe
    class Offers
      def self.show(offer_id)
        "<iframe src='#{ExchequerClient::URL.offers_show(offer_id)}' width='100%' height='100%'></iframe>"
      end
    end
  end
end

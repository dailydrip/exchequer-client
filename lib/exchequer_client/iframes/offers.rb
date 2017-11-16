module ExchequerClient
  module Iframe
    class Offers
      def self.checkout(offer_id)
        "<iframe src='#{ExchequerClient::URL.checkout(offer_id)}' width='100%' height='100%'></iframe>"
      end
    end
  end
end

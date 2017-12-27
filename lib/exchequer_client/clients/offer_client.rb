module ExchequerClient
  class OfferClient < BaseClient
    def initialize(options = {})
      super(options)
    end

    def all
      [].tap do |f|
        response = get("offers/?public_token=#{@public_token}")
        response_offers = JSONConverter.to_hash(response.body)
        response_offers.each do |offer|
          f << Offer.new(offer)
        end
      end
    end
  end
end

module ExchequerClient
  class OfferClient < BaseClient
    def initialize(options = {})
      super(options)
    end

    def all
      response = get("offers/?public_token=#{@public_token}")
      response_offers = JSONConverter.to_hash(response.body)
      response_offers.map do |offer|
        Offer.new(offer)
      end
    end
  end
end

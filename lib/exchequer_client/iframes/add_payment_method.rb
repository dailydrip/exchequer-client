module ExchequerClient
  class AddPaymentMethod
    def self.render
      "<iframe src='#{ExchequerClient::URL.add_payment_method}' width='100%' height='100%'></iframe>"
    end
  end
end

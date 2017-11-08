module ExchequerClient
  class URL
    class << self
      def visitors
        "#{ExchequerClient::Config.base_url}/"
      end

      def add_payment_method
        "#{ExchequerClient::Config.base_url}/payments/add_payment_method"
      end

      def another_path
        "#{ExchequerClient::Config.base_url}/another_path"
      end
    end
  end
end

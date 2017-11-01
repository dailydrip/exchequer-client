module ExchequerClient
  class URL
    class << self
      def visitors
        "#{ExchequerClient::Config.base_url}/"
      end

      def another_path
        "#{ExchequerClient::Config.base_url}/another_path"
      end
    end
  end
end

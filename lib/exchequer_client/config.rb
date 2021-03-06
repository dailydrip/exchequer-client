module ExchequerClient
  class Config
    def self.base_api_url
      ENV['EXCHEQUER_BASE_API_URL'] ? ENV['EXCHEQUER_BASE_API_URL'] : 'http://localhost:3000/api/v1'
    end

    def self.base_url
      ENV['EXCHEQUER_BASE_URL'] ? ENV['EXCHEQUER_BASE_URL'] : 'http://localhost:3000'
    end
  end
end

# This will be deleted after. This is only for test purposes

module ExchequerClient
  class VisitorIframe
    def self.render
      "<iframe src='#{ExchequerClient::URL.visitors}' width='100%' height='100%'></iframe>"
    end
  end
end

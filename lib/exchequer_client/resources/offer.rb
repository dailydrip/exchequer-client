module ExchequerClient
  class Offer
    attr_accessor :id, :manager_id, :name, :description, :due_on, :amount, :deferrable

    def initialize(json)
      decode_offer(json)
    end

    private def decode_offer(json)
      self.id = json['id']
      self.manager_id = json['manager']['id']
      self.name = json['name']
      self.description = json['description']
      self.due_on = json['due_on']
      self.amount = json['amount']
      self.deferrable = json['deferrable']
      self
    end
  end
end

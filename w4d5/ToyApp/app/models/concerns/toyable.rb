module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
    #Toys.where(toyable_id: self.id, toyable_type: self.class)
  end

  def receive_toy(name)
    toy = Toy.find_or_create_by(name: name)
    toy.toyable_type = self.class
    toy.toyable_id = self.id
  end
end

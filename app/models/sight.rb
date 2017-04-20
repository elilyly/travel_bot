class Sight < ApplicationRecord
  has_many :vacations
  has_many :users, through: :vacations

  def name_and_city
    "| #{self.city} | #{self.name}"
  end
  
end

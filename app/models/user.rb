class User < ApplicationRecord
  has_many :vacations
  has_many :sights, through: :vacations
  has_secure_password
end

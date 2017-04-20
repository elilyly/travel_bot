class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :sight, optional: true
end

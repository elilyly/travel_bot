class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :sight, optional: true

  def vacation_dates
    "#{self.start_date}"
  end
end

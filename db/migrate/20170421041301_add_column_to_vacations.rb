class AddColumnToVacations < ActiveRecord::Migration[5.0]
  def change
    add_column :vacations, :start_date, :date
    add_column :vacations, :end_date, :date
  end
end

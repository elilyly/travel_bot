class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.string :name
      t.integer :sight_id
      t.integer :user_id

      t.timestamps
    end
  end
end

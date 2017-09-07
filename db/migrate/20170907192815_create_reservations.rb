class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :month
      t.integer :day
      t.integer :year

      t.timestamps
    end
  end
end

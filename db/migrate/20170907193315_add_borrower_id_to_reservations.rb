class AddBorrowerIdToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :borrower_id, :integer
  end
end

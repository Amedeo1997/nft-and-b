class AddStatusColumnToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :status, :string
  end
end

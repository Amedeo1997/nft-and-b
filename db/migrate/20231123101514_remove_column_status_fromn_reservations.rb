class RemoveColumnStatusFromnReservations < ActiveRecord::Migration[7.1]
  def change
    remove_column :reservations, :status, :string
  end
end

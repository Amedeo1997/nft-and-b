class AddStartDateToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :start_date, :date
  end
end

class AddEndDateToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :end_date, :date
  end
end

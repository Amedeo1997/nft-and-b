class ChangeStatusToDefault < ActiveRecord::Migration[7.1]
  def change
    change_column :reservations, :status, :boolean, default: false
  end
end

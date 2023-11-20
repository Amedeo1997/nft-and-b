class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.float :price
      t.string :description
      t.boolean :availability
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

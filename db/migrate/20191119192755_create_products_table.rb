class CreateProductsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :brand
      t.string :model
      t.decimal :price
      t.integer :year
      t.references :user, foreign_key: true
      t.references :color, foreign_key: true
      t.timestamps
    end
  end
end

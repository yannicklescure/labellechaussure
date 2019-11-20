class CreatePurchasesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :rating
      t.boolean :done, default: false
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

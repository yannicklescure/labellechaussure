class AddDataToPurchasesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :first_name, :string
    add_column :purchases, :last_name, :string
    add_column :purchases, :address_1, :string
    add_column :purchases, :address_2, :string
    add_column :purchases, :country, :string
    add_column :purchases, :state, :string
    add_column :purchases, :zip, :string
  end
end

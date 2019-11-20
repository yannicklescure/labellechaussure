class AddConfirmToPurchasesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :confirm, :boolean, default: false
  end
end

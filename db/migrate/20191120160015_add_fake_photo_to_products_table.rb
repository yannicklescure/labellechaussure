class AddFakePhotoToProductsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :fake_photo, :string
  end
end
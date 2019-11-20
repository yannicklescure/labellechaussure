class Product < ApplicationRecord
  belongs_to :user
  belongs_to :color

  mount_uploader :photo, PhotoUploader
end

class Product < ApplicationRecord
  belongs_to :user
  belongs_to :color

  mount_uploader :photo, PhotoUploader

  include PgSearch::Model
  pg_search_scope :search_product,
    against: [ :title, :brand, :model ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

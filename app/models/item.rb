require 'uri'

class Item < ApplicationRecord

  validates :title,
    presence: true, length: { minimum: 2 }

  validates :description,
    presence: true, length: { maximum: 500 }
  
  validates :price,
    presence: true, numericality: { :greater_than_or_equal_to => 0 }

  validates :image_url,
    presence: true

end

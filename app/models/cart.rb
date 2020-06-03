class Cart < ApplicationRecord
  belongs_to :user
  has_many :joint_table_cart_items
  has_many :items, through: :joint_table_cart_items
end

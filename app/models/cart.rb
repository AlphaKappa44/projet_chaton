class Cart < ApplicationRecord
  belongs_to :user
  has_many :join_table_cart_items
  has_many :items, through: :join_table_cart_items

  def self.empty(user)
    JoinTableCartItem.where(cart_id: Cart.find_by(user_id: user.id).id).delete_all
  end
end

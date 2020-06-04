class Order < ApplicationRecord

  belongs_to :user

  has_many :join_table_order_items
  has_many :items, through: :join_table_order_items

  after_create :order_send

  def order_send
    UserMailer.order_email(User.find(self.user_id)).deliver_now
    AdminMailer.order_email(User.find(self.user_id)).deliver_now
  end
end

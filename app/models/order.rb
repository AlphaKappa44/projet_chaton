class Order < ApplicationRecord
  has_one :user
  has_many :items, through: :user

  after_create :order_send

  def order_send
    UserMailer.order_email(User.find(self.user_id)).deliver_now
    AdminMailer.order_email(User.find(self.user_id)).deliver_now
  end
end

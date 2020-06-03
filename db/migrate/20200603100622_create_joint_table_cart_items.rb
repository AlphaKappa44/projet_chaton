class CreateJointTableCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :joint_table_cart_items, :id => false do |t|

      t.belongs_to :item, index: true
      t.belongs_to :cart, index: true

      t.timestamps
    end
  end
end

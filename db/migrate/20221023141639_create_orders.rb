class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :price
      t.string :description
      t.belongs_to :user
      t.timestamps
    end
  end
end

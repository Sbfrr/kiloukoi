class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :user
      t.belongs_to :item
      t.date :arrival
      t.date :departure
      t.integer :price
      t.timestamps
    end
  end
end

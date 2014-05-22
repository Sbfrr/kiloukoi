class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|

      t.timestamps
    end
  end
end

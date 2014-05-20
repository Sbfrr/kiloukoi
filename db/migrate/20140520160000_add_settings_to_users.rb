class AddSettingsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :address, :text
    add_column :users, :zipcode, :integer
    add_column :users, :city, :string
  end
end
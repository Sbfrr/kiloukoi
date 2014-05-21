class RemoveLocationToItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.remove_column :location
      t.belongs_to :user
  end
end
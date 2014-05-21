class RemoveLocationToItems < ActiveRecord::Migration
  def change
    remove_column :items, :location

    change_table :items do |t|
      t.belongs_to :user
    end

  end
end
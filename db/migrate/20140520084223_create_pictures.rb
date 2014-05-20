class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belong_to :item
      t.timestamps
    end
  end
end

class CreateOutfitItems < ActiveRecord::Migration[5.2]
  def change
    create_table :outfit_items do |t|
      t.integer :item_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end

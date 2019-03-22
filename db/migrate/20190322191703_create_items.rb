class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.string :category
      t.string :subcategory
      t.string :color
      t.string :season
      t.string :occasion
      t.string :keywords
      t.string :brand
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end

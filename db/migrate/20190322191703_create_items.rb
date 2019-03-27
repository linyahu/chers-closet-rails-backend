class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.string :category
      t.string :color
      t.string :brand
      t.integer :user_id

      t.timestamps
    end
  end
end

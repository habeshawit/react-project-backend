class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :name
      t.string :description
      t.string :qty
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end
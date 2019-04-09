class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.float :avgcost
      t.string :category
      t.date :releasedate
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end

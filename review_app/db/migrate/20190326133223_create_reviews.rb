class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :productrating
      t.text :reviewtext
      t.date :date

      t.timestamps
    end
  end
end

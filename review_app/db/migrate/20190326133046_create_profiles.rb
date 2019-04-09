class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :fullname
      t.date :dob
      t.string :address
      t.string :city
      t.string :country
      t.string :userphoto

      t.timestamps
    end
  end
end

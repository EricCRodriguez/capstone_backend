class CreateFoundPets < ActiveRecord::Migration[6.0]
  def change
    create_table :found_pets do |t|
      t.integer :user_id
      t.string :address
      t.string :breed
      t.string :color
      t.string :size
      t.string :gender
      t.string :picture
      t.string :add_info
      t.string :shelter_info

      t.timestamps
    end
  end
end

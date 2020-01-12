class CreateLostPets < ActiveRecord::Migration[6.0]
  def change
    create_table :lost_pets do |t|
      t.integer :user_id
      t.string :address
      t.string :search_area
      t.string :breed
      t.string :color
      t.string :size
      t.string :age
      t.string :gender
      t.string :behaviour_type
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end

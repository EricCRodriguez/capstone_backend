class CreateMessageBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :message_bodies do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :body
      t.string :picture

      t.timestamps
    end
  end
end

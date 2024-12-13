class CreateInvites < ActiveRecord::Migration[8.0]
  def change
    create_table :invites do |t|
      t.string :name
      t.string :email
      t.boolean :rsvp
      t.text :message

      t.timestamps
    end
  end
end

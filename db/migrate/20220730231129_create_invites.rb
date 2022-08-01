class CreateInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :invites do |t|
      t.string :firts_name
      t.string :last_name
      t.boolean :invitee, default: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end

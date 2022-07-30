class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :event_date
      t.time :event_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

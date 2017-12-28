class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.datetime :begin_event
      t.datetime :end_event

      t.timestamps
    end
  end
end

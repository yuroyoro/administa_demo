class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string   :title
      t.datetime :start_at
      t.datetime :end_at
      t.text     :place
      t.integer  :participants
      t.integer  :owner_id
      t.text     :description
      t.boolean  :published

      t.timestamps null: false
    end
  end
end

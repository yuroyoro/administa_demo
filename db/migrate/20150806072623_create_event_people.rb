class CreateEventPeople < ActiveRecord::Migration
  def change
    create_table :event_people do |t|
      t.belongs_to :event,  index: true, foreign_key: true
      t.belongs_to :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

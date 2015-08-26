class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.text   :profile_text
      t.string :profile_image

      t.timestamps null: false
    end
  end
end

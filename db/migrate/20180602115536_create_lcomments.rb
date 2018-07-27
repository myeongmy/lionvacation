class CreateLcomments < ActiveRecord::Migration
  def change
    create_table :lcomments do |t|
      t.string :content
      t.integer :location_id
      t.string :user_email

      t.timestamps null: false
    end
  end
end

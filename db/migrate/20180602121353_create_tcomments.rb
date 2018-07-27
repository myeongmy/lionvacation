class CreateTcomments < ActiveRecord::Migration
  def change
    create_table :tcomments do |t|
      t.string :content
      t.integer :thing_id
      t.string :user_email

      t.timestamps null: false
    end
  end
end

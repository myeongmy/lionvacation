class CreateFcomments < ActiveRecord::Migration
  def change
    create_table :fcomments do |t|
      t.string :content
      t.integer :food_id
      t.integer :user_id
      t.string :user_email

      t.timestamps null: false
    end
  end
end

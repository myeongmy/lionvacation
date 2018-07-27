class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :email

      t.timestamps null: false
    end
  end
end

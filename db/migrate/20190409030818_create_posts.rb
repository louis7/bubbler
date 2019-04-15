class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |column|
    column.string :comment
    column.integer :user_id
    column.integer :likes


  end
end
end

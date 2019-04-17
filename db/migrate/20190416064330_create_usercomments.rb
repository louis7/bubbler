class CreateUsercomments < ActiveRecord::Migration
  def change
    create_table :usercomments do |column|
    column.integer :user_id
    column.integer :post_id
    column.integer :convo_id
    column.string  :comment

  end
  end
end

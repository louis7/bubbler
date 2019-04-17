class CreateConvos < ActiveRecord::Migration
  def change
    create_table  :convos do |column|
    column.integer :convos
    column.integer :post_id
  end
  end
end

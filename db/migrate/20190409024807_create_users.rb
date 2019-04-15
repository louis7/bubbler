class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |column|
    column.string :name
  end
end
end

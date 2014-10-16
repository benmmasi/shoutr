class AddUsernameColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :text, unique: true
   
  end
end

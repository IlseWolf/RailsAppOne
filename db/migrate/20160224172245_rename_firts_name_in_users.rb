class RenameFirtsNameInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :firts_name, :first_name
  end
end

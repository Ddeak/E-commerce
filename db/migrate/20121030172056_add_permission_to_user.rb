class AddPermissionToUser < ActiveRecord::Migration
  def change
    add_column :users, :level, :string
  end
end

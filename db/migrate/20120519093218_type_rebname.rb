class TypeRebname < ActiveRecord::Migration
  def up
	rename_column :users, :type, :user_type
  end

  def down
  end
end

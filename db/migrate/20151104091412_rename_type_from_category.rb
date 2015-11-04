class RenameTypeFromCategory < ActiveRecord::Migration
  def change
  	rename_column :categories, :type, :description
  end
end

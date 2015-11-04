class ChangeDescriptionFormatInCategories < ActiveRecord::Migration
  def up
    change_column :categories, :description, :string
  end

  def down
    change_column :categories, :description, :integer
  end
end

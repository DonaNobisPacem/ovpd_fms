class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :type
      t.boolean :positive_balance

      t.timestamps null: false
    end
  end
end

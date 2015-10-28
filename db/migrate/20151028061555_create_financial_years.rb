class CreateFinancialYears < ActiveRecord::Migration
  def change
    create_table :financial_years do |t|
      t.integer :year
      t.decimal :budget, precision: 12, scale: 2
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

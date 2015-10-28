class CreateFinancialEntries < ActiveRecord::Migration
  def change
    create_table :financial_entries do |t|
      t.string :alobs
      t.string :description
      t.string :party_involved
      t.datetime :transaction_date
      t.decimal :obligation_incurred, precision: 10, scale: 2
      t.string :fund_source
      t.references :financial_year, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

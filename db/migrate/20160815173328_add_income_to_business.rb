class AddIncomeToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :gross_receipts, :integer
    add_column :businesses, :returns, :integer
    add_column :businesses, :cost_goods, :integer
    add_column :businesses, :other_income, :integer
  end
end

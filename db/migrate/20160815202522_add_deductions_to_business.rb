class AddDeductionsToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :off_comp, :integer
    add_column :businesses, :salaries, :integer
    add_column :businesses, :repairs, :integer
    add_column :businesses, :bad_debt, :integer
    add_column :businesses, :rents, :integer
    add_column :businesses, :taxes, :integer
    add_column :businesses, :interest, :integer
    add_column :businesses, :depreciation, :integer
    add_column :businesses, :advertising, :integer
    add_column :businesses, :pension, :integer
    add_column :businesses, :emp_ben, :integer
    add_column :businesses, :other_deductions, :integer
  end
end

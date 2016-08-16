class AddUserToTaxReturns < ActiveRecord::Migration
  def change
    add_column :tax_returns, :user_id, :integer
  end
end

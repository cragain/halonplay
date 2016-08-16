class AddBusinessIdToTaxReturns < ActiveRecord::Migration
  def change
    add_column :tax_returns, :business_id, :string
  end
end

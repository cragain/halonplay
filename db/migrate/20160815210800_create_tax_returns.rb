class CreateTaxReturns < ActiveRecord::Migration
  def change
    create_table :tax_returns do |t|

      t.timestamps null: false
    end
  end
end

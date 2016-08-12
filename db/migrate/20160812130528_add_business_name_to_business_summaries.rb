class AddBusinessNameToBusinessSummaries < ActiveRecord::Migration
  def change
    add_column :business_summaries, :business_name, :string
    add_column :business_summaries, :business_start, :date
  end
end

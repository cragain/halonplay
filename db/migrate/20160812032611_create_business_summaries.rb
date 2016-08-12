class CreateBusinessSummaries < ActiveRecord::Migration
  def change
    create_table :business_summaries do |t|

      t.timestamps null: false
    end
  end
end

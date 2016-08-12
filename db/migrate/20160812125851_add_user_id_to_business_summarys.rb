class AddUserIdToBusinessSummarys < ActiveRecord::Migration
  def change
    add_column :business_summaries, :user_id, :integer
  end
end

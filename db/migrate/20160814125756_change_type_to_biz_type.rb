class ChangeTypeToBizType < ActiveRecord::Migration
  def change
    rename_column :businesses, :type, :biz_type
  end
end

class AddEinToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :ein, :string
    add_column :businesses, :type, :string
    add_column :businesses, :bac, :string
    add_column :businesses, :method, :string
    add_column :businesses, :activity, :string
    add_column :businesses, :product, :string
    add_column :businesses, :schb3, :string
    add_column :businesses, :schb4a, :string
    add_column :businesses, :schb4b, :string
    add_column :businesses, :schb10a, :string
    add_column :businesses, :schb10b, :string
  end
end

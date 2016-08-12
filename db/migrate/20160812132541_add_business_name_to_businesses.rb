class AddBusinessNameToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :business_name, :string
    add_column :businesses, :business_start, :date
    add_column :businesses, :business_street_1, :string
    add_column :businesses, :business_street_2, :string
    add_column :businesses, :business_city, :string
    add_column :businesses, :business_state, :string
    add_column :businesses, :business_zip, :string
  end
end

class AddOtherExpensesToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :accounting, :integer
    add_column :businesses, :auto, :integer
    add_column :businesses, :bank_charge, :integer
    add_column :businesses, :cell_phone, :integer
    add_column :businesses, :commissions, :integer
    add_column :businesses, :computer, :integer
    add_column :businesses, :consulting, :integer
    add_column :businesses, :credit_costs, :integer
    add_column :businesses, :delivery, :integer
    add_column :businesses, :dues, :integer
    add_column :businesses, :education, :integer
    add_column :businesses, :fuel, :integer
    add_column :businesses, :gifts, :integer
    add_column :businesses, :ind_contractor, :integer
    add_column :businesses, :insurance, :integer
    add_column :businesses, :internet, :integer
    add_column :businesses, :janitorial, :integer
    add_column :businesses, :legal_professional, :integer
    add_column :businesses, :marketing, :integer
    add_column :businesses, :meals50, :integer
    add_column :businesses, :misc, :integer
    add_column :businesses, :office, :integer
    add_column :businesses, :parking, :integer
    add_column :businesses, :payroll_process, :integer
    add_column :businesses, :permits, :integer
    add_column :businesses, :postage, :integer
    add_column :businesses, :printing, :integer
    add_column :businesses, :software, :integer
    add_column :businesses, :supplies, :integer
    add_column :businesses, :telephone, :integer
    add_column :businesses, :tools, :integer
    add_column :businesses, :travel, :integer
    add_column :businesses, :utilities, :integer
    add_column :businesses, :waste_removal, :integer
    add_column :businesses, :other1, :integer
    add_column :businesses, :other2, :integer
    add_column :businesses, :other3, :integer
    add_column :businesses, :other4, :integer
    add_column :businesses, :other5, :integer
    add_column :businesses, :other6, :integer
   
  end
end

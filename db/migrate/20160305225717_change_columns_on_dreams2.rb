class ChangeColumnsOnDreams2 < ActiveRecord::Migration
  def change
  	change_column :dreams, :monthly_payment, :integer, precision: 8, scale: 2, :default => nil
  	change_column :dreams, :total_savings, :integer, precision: 8, scale: 2, :default => nil
  end
end

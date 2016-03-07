class ChangeColumnsOnDreams < ActiveRecord::Migration
  def change
  	change_column :dreams, :monthly_payment, :integer, :default => nil
  	change_column :dreams, :total_savings, :integer, :default => nil
  end
end
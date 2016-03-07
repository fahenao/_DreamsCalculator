class AddColumsToDreamTable < ActiveRecord::Migration
  def change
    add_column :dreams, :monthly_payment, :decimal, precision: 8, scale: 2
    add_column :dreams, :total_savings, :decimal, precision: 8, scale: 2
  end
end

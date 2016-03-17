class ChangeMonthlypaymentAndTotalSavingsInDreams < ActiveRecord::Migration
  def up
     change_column :dreams, :monthly_payment, :decimal, :precision => 10, :scale => 2
     change_column :dreams, :total_savings, :decimal, :precision => 10, :scale => 2
   end

   def down
     change_column :dreams, :monthly_payment, :integer
     change_column :dreams, :total_savings, :integer
   end
end

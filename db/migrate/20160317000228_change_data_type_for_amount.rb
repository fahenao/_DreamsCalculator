class ChangeDataTypeForAmount < ActiveRecord::Migration
  def change
  	change_column :dreams, :amount, :decimal, :precision => 10, :scale => 2
  end
end

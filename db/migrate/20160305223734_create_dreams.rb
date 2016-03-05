class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :name
      t.string :email
      t.string :dream
      t.decimal :amount, :precision => 8, :scale => 2
      t.integer :term
      t.text :comments

      t.timestamps null: false
    end
  end
end

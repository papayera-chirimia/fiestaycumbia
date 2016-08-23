class CreatePronums < ActiveRecord::Migration
  def change
    create_table :pronums do |t|
      t.string :num1
      t.string :num2
      t.string :num3
      t.string :num4

      t.timestamps null: false
    end
  end
end

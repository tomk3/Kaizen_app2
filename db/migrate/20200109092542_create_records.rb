class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.date :date
      t.string :lot
      t.string :prod_name
      t.float :yield
      t.integer :def_total

      t.timestamps
    end
  end
end

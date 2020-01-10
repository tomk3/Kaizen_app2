class CreateDefects < ActiveRecord::Migration[5.2]
  def change
    create_table :defects do |t|
      t.string :def_type
      t.date :date
      t.integer :def_count

      t.timestamps
    end
  end
end

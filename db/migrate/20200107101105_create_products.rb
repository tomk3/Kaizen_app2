class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :prod_name

      t.timestamps
    end
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#データベースにCSVでデータ流し込む
require "csv"

CSV.foreach('db/product_list.csv', encoding: 'UTF-8', headers: true) do |row|
  Product.create(
    prod_name: row['prod_name']
  )
end

CSV.foreach('db/record_list.csv', encoding: 'UTF-8', headers: true) do |row|
  Record.create(
    date: row["date"],
    prod_name: row['prod_name'],
    lot: row["lot"],
    yield: row["yield"],
    def_total: row["def_total"]
  )
end

require "csv"

products_csv = CSV.readlines("db/products.csv")
products_csv.shift
products_csv.each do |row|
  Product.create(name: row[1], detail: row[3], company: row[4], material: row[5], preservation: row[6], quantity: row[9],category_id: row[10], user_id: row[11])
end

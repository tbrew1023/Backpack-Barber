# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-hoodie.jpeg",
  price: 39.99,
  description: "Orange and black hoodie (large)",
  product_type: "shirt"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-backpack.jpeg",
  price: 79.99,
  description: "Barber Backpack (leather)",
  product_type: "backpack"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-hat.jpeg",
  price: 19.99,
  description: "Gray baseball cap (cotton)",
  product_type: "hat"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-backpack2.jpeg",
  price: 99.99,
  description: "Barber Backpack (leather & suede)",
  product_type: "backpack"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-tshirt.jpeg",
  price: 14.99,
  description: "Backpack Barber orange t-shirt (medium)",
  product_type: "shirt"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-hat2.jpeg",
  price: 19.99,
  description: "Black baseball cap (leather)",
  product_type: "hat"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-mug.jpeg",
  price: 34.99,
  description: "Backpack Barber mug (black)",
  product_type: "other"
)

StoreProduct.create!(
  imgurl: "http://studentweb.cdm.depaul.edu/~tbrew/it231/images/product-hoodie.jpeg",
  price: 39.99,
  description: "Orange and black hoodie (medium)",
  product_type: "shirt"
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Item.destroy_all

sofa = Category.create(name: "Sofa")

item = Item.create(name: 'sample item', description: "gray couch", qty: 5, price: 1250.99, image_url: "https://assets.vogue.com/photos/5b7ae022ea25ec13437c06df/master/w_2560%2Cc_limit/00-story-image-new-floyd-sofa-design-inspiration.jpg", category_id: sofa.id)

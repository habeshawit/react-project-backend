# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Item.destroy_all
User.destroy_all

shalom = User.create(username: "Shalom", email: "shalom@test.com", password: "password")
karen = User.create(username: "Karen", email: "karen@test.com", password: "password")
abby = User.create(username: "Abby", email: "abby@test.com", password: "password")
paul = User.create(username: "Paul", email: "paul@test.com", password: "password")
test_user = User.create(username: "Test", email: "test@test.com", password: "password")

sofas = Category.create(name: "Sofas")
beds = Category.create(name: "Beds")
outdoor_furniture = Category.create(name: "Outdoor Furniture")
cabinets = Category.create(name: "Cabinets")
tv_stands = Category.create(name: "TV Stands")
coffee_tables = Category.create(name: "Coffee Tables")
desks = Category.create(name: "Desks")

Item.create(       
    [{name: "sample item", description: "gray couch", qty: "5", price: 1250.99, image_url: "https://assets.vogue.com/photos/5b7ae022ea25ec13437c06df/master/w_2560%2Cc_limit/00-story-image-new-floyd-sofa-design-inspiration.jpg", category_id: sofas.id, user_id: shalom.id},
    {name: "sample item 2", description: "green couch", qty: "4", price: 150, image_url: "https://images-na.ssl-images-amazon.com/images/I/81MUooSgfQL._AC_SL1500_.jpg", category_id: sofas.id, user_id: shalom.id},
    {name: "sample item 3", description: "Velvet Couch", qty: "8", price: 120, image_url: "https://www.kfrooms.com/wp-content/uploads/2020/03/54905.jpg", category_id: sofas.id, user_id: shalom.id},
    { name: "Sample item 4", description: "White Couch", qty: "2", price: 200, image_url: "https://www.gannett-cdn.com/presto/2021/02/18/USAT/428c9034-7bba-4e97-a055-db2c32082003-cloud-couch-hero.jpg?width=660&height=372&fit=crop&format=pjpg&auto=webp", category_id: sofas.id, user_id: abby.id},
    {name: "Gray Drusilla Tufted Upholstered Low Profile Standard Bed", description: "gray bed", qty: "1", price: 120, image_url: "https://secure.img1-fg.wfcdn.com/im/00044277/compr-r85/1229/122980193/drusilla-tufted-upholstered-low-profile-standard-bed.jpg", category_id: sofas.id, user_id: shalom.id},
    {name: "Brown cabinet", description: "cabinet with drawers", qty: "6", price: 55, image_url: "https://secure.img1-fg.wfcdn.com/im/85474645/resize-h310-w310%5Ecompr-r85/1379/137960879/adalberto-2-door-accent-cabinet.jpg", category_id: cabinets.id, user_id: paul.id},
    {name: "Gray Drusilla Tufted Upholstered Low Profile Standard Bed", description: "gray bed", qty: "1", price: 120, image_url: "https://secure.img1-fg.wfcdn.com/im/00044277/compr-r85/1229/122980193/drusilla-tufted-upholstered-low-profile-standard-bed.jpg", category_id: beds.id, user_id: shalom.id},
    {name: "Brown leather couch", description: "Bring luxury, quality and classic sophistication t… by tailored details and nailhead trim. Read less", qty: "1", price: 1000, image_url: "https://www.livingspaces.com/globalassets/productassets/200000-299999/240000-249999/244000-244999/244400-244499/244439/244439_brown_leather_sofa_v2_signature_01.jpg?w=1911&h=1288&mode=pad", category_id: sofas.id, user_id: shalom.id},
    {name: "tv stand sample", description: "3-in-1 tv stand, brown", qty: "3", price: 80, image_url: "https://images.thdstatic.com/productImages/47185be9-d344-48f6-acbe-f7a630926f6e/svn/cherry-convenience-concepts-tv-stands-131020ch-e1_600.jpg", category_id: tv_stands.id, user_id: karen.id},
    {name: "tv stand sample2", description: "brown tv stand", qty: "2", price: 85, image_url: "https://i5.walmartimages.com/asr/7c4afb53-0058-4078-9ad7-233eccf6bf28_1.70e0d10c7fb7617905875df431395e4d.jpeg", category_id: tv_stands.id, user_id: abby.id},
    {name: "tv stand 3", description: "sample tv stand", qty: "4", price: 44, image_url: "https://images-na.ssl-images-amazon.com/images/I/81Kp0lST9tL._AC_SX466_.jpg", category_id: tv_stands.id, user_id: shalom.id},
    {name: "sample item 2", description: "tv stand", qty: "9", price: 150, image_url: "http://mobileimages.lowes.com/product/converted/840035/840035346984.jpg", category_id: tv_stands.id, user_id: test_user.id},
    {name: "brown desk", description: "large comfy desk", qty: "1", price: 150, image_url: "https://i5.walmartimages.com/asr/3642a808-c507-44b3-8dac-be0457884606_1.321ec95aa2f61e4bcd07f36a7f66bf96.jpeg", category_id: desks.id, user_id: shalom.id},
    {name: "white desk", description: "desk for work", qty: "3", price: 110, image_url: "https://www.finallyhomefurnishings.com/v/vspfiles/photos/800108-2T.jpg", category_id: sofas.id, user_id: test_user.id},
    {name: "cocktail wood coffee table", description: "wooden coffee table with metal legs", qty: "6", price: 30, image_url: "https://images-na.ssl-images-amazon.com/images/I/81rwQHh12hL._AC_SX466_.jpg", category_id: coffee_tables.id, user_id: paul.id},
    {name: "patio chairs", description: "outdoor chairs", qty: "2", price: 110, image_url: "https://www.gannett-cdn.com/presto/2020/07/15/USAT/e6eb026a-7f3a-43af-bf58-52eb0fdf1115-walmart.jpeg", category_id: outdoor_furniture.id, user_id: shalom.id},
    {name: "Outdoor Furniture Set", description: "chairs and table for outdoors", qty: "4", price: 66, image_url: "https://images-na.ssl-images-amazon.com/images/I/81N%2BoqvpQfL._AC_SL1500_.jpg",  category_id: outdoor_furniture.id, user_id:test_user.id},
    {name: "Lorraine Coffee Table", description: "60'', brown square coffee table", qty: "3", price: 20, image_url: "https://assets.pbimgs.com/pbimgs/ab/images/dp/wcm/202109/0817/lorraine-60-coffee-table-c.jpg", category_id: coffee_tables.id, user_id: shalom.id},
    {name: "Brown couch", description: "brown, leather", qty: "4", price: 150, image_url: "https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5fc15e68c4f351dead36b378%2F0x0.jpg", category_id: sofas.id, user_id: test_user.id}]
)


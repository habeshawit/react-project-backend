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

shalom = User.create(username: "Shalom", email: "shalom@test.com", password: "password", contact_preference: "Call or text 305-1000-xxxx", location: "Dearborn, MI")
karen = User.create(username: "Karen", email: "karen@test.com", password: "password", contact_preference: "Call or text  305-1000-xxxx", location: "Detroit, MI")
abby = User.create(username: "Abby", email: "abby@test.com", password: "password", contact_preference: "Call or text  305-1000-xxxx", location: "Troy, MI")
paul = User.create(username: "Paul", email: "paul@test.com", password: "password", contact_preference: "Call or text  305-1000-xxxx", location: "Ann Arbor, MI")
test_user = User.create(username: "Test", email: "test@test.com", password: "password", contact_preference: "Call or text  305-1000-xxxx", location: "Grand Rapids, MI")

sofas = Category.create(name: "Sofas & Armchairs")
bedroom = Category.create(name: "Bedroom")
outdoor_furniture = Category.create(name: "Outdoor Furniture")
cabinets = Category.create(name: "Cabinets")
tv_stands = Category.create(name: "TV Stands")
coffee_tables = Category.create(name: "Coffee Tables")
desks = Category.create(name: "Desks")
tables_and_chairs = Category.create(name: "Tables & Chairs")
storage_furniture = Category.create(name: "Storage Furniture")
kids_furniture = Category.create(name: "Kid's Furniture")
other = Category.create(name: "Other")


Item.create(       
    [{name: "Gray Couch", description: "This sectional sofa has a completely casual style. It features a soft upholstery and is priced affordably",  price: 1250.99, condition: "new", image_url: "https://assets.vogue.com/photos/5b7ae022ea25ec13437c06df/master/w_2560%2Cc_limit/00-story-image-new-floyd-sofa-design-inspiration.jpg", category_id: sofas.id, user_id: shalom.id},
    {name: "Acadia Collection Colonial Teak Lounge Chair + Love Seat", description: "Set includes: 1 Acadia Sofa & 1 Acadia Lounge Chair. Solid Acacia wood in a Colonial Teak finish. All wood is kiln-dried for added durability.", price: 350, condition: "Open box (never used)", image_url: "https://images.furnituredealer.net/img/dealer/37/slideshow/f890942c9ac7463a93c32667e11481e0.jpg", category_id: outdoor_furniture.id, user_id: shalom.id},
    {name: "Andover Mills Evie Bed", description: "Brand new queen size bed. Comes with mattress", price: 200, condition: "Used (like new)", image_url: "https://pyxis.nymag.com/v1/imgs/17b/d1d/2fbe4ae55704cccca13681a08be3ccd509-bed-frames.2x.rsocial.w600.jpg", category_id: bedroom.id, user_id: karen.id},
    {name: "Green couch", description: "Couch in like new condition. Small dent in the back", price: 250, condition: "Open box (never used)", image_url: "https://thehousethatlarsbuilt.com/wp-content/uploads/2016/10/ARTICLE-SOFA-IN-GREEN-3.jpg", category_id: sofas.id, user_id: paul.id},
    {name: "Full Upholster Bed", description: "Couch in like new condition. Small dent in the back", price: 150, condition: "Open box (never used)", image_url: "https://cincinnatioverstockwarehouse.com/wp-content/uploads/2019/01/B410-Lonnix_Full_Bed.jpg", category_id: bedroom.id, user_id: shalom.id},
    {name: "Velvet Couch", description: "Used but in fairly good condition", price: 120, condition: "Used (normal wear)", image_url: "https://images-na.ssl-images-amazon.com/images/I/71OYzbIRppL._AC_SX466_.jpg", category_id: sofas.id, user_id: paul.id},
    {name: "White Sofa", description: "Used, normal wear", price: 200, condition: "Used (like new)", image_url: "https://images-na.ssl-images-amazon.com/images/I/91eOWXWatBL._AC_SL1500_.jpg", category_id: sofas.id, user_id: abby.id},
    {name: "Brown cabinet", description: "cabinet with two drawers. In Like new condition",  price: 55, condition: "Reconditioned / Refurbished", image_url: "https://secure.img1-fg.wfcdn.com/im/85474645/resize-h310-w310%5Ecompr-r85/1379/137960879/adalberto-2-door-accent-cabinet.jpg", category_id: cabinets.id, user_id: paul.id},
    {name: "Gray Drusilla Tufted Upholstered Low Profile Standard Bed", description: "gray bed", price: 120, condition: "Used (normal wear)", image_url: "https://caspercontent.imgix.net/2QMhuGYOOs950Wq32Usu5p/8e78c5e5af02c287a649c1917ebb2c6b/Haven-Heathered-Gray-01_2x.jpg?auto=compress,format&q=65&w=1200", category_id: bedroom.id, user_id: shalom.id},
    {name: "Spacious Tv stand", description: "3-in-1 tv stand, brown", price: 80, condition: "Used (normal wear)", image_url: "https://images.thdstatic.com/productImages/47185be9-d344-48f6-acbe-f7a630926f6e/svn/cherry-convenience-concepts-tv-stands-131020ch-e1_600.jpg", category_id: tv_stands.id, user_id: karen.id},
    {name: "Silver Bed Frame", description: "bed frame for twin size bed. In fair condition", price: 80, condition: "Used (normal wear)", image_url: "https://www.ikea.com/us/en/images/products/sagstua-bed-frame-black-luroey__0861898_pe713121_s5.jpg", category_id: bedroom.id, user_id: karen.id},
    {name: "Brown leather couch", description: "Bring luxury, quality and classic sophistication t??? by tailored details and nailhead trim. Read less", price: 1000, condition: "Used (normal wear)", image_url: "https://res.cloudinary.com/castlery/image/upload/w_1800,f_auto,q_auto/v1588056248/marketing/Cross-Market/blog/Blog_06AdamsSectionalSofa_1.jpg", category_id: sofas.id, user_id: shalom.id},
    {name: "Tv stand", description: "Brown, wooden tv stand", price: 85, condition: "Used (normal wear)", image_url: "https://i5.walmartimages.com/asr/7c4afb53-0058-4078-9ad7-233eccf6bf28_1.70e0d10c7fb7617905875df431395e4d.jpeg", category_id: tv_stands.id, user_id: abby.id},
    {name: "Tv stand", description: "Used but fairly good condition", price: 150, condition: "Used (normal wear)", image_url: "http://mobileimages.lowes.com/product/converted/840035/840035346984.jpg", category_id: tv_stands.id, user_id: test_user.id},
    {name: "Brown desk", description: "large comfy desk", price: 150, condition: "Used (normal wear)", image_url: "https://i5.walmartimages.com/asr/3642a808-c507-44b3-8dac-be0457884606_1.321ec95aa2f61e4bcd07f36a7f66bf96.jpeg", category_id: desks.id, user_id: shalom.id},
    {name: "White desk", description: "desk for work", price: 110, condition: "Used (normal wear)", image_url: "https://www.finallyhomefurnishings.com/v/vspfiles/photos/800108-2T.jpg", category_id: sofas.id, user_id: test_user.id},
    {name: "Cocktail wood coffee table", description: "wooden coffee table with metal legs", price: 30, condition: "Used (normal wear)", image_url: "https://images-na.ssl-images-amazon.com/images/I/81rwQHh12hL._AC_SX466_.jpg", category_id: coffee_tables.id, user_id: paul.id},
    {name: "Entertainment center", description: "sample tv stand", price: 44, condition: "Used (normal wear)", image_url: "https://images-na.ssl-images-amazon.com/images/I/81Kp0lST9tL._AC_SX466_.jpg", category_id: tv_stands.id, user_id: shalom.id},
    {name: "Patio chairs", description: "outdoor chairs", price: 110, condition: "Used (normal wear)", image_url: "https://www.gannett-cdn.com/presto/2020/07/15/USAT/e6eb026a-7f3a-43af-bf58-52eb0fdf1115-walmart.jpeg", category_id: outdoor_furniture.id, user_id: shalom.id},
    {name: "Outdoor Furniture Set", description: "chairs and table for outdoors", price: 66, condition: "Used (normal wear)", image_url: "https://images-na.ssl-images-amazon.com/images/I/81N%2BoqvpQfL._AC_SL1500_.jpg",  category_id: outdoor_furniture.id, user_id:test_user.id},
    {name: "Lorraine Coffee Table", description: "60'', brown square coffee table", price: 20, condition: "Used (normal wear)", image_url: "https://assets.pbimgs.com/pbimgs/ab/images/dp/wcm/202109/0817/lorraine-60-coffee-table-c.jpg", category_id: coffee_tables.id, user_id: shalom.id},
    {name: "Brown couch", description: "brown, leather", price: 150, condition: "Used (normal wear)", image_url: "https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5fc15e68c4f351dead36b378%2F0x0.jpg", category_id: sofas.id, user_id: test_user.id}]
)


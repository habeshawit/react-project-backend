INVENTORY FOR STORE

Category
has_many :items
:name

Item
belongs_to :category
:category_id - integer
:description, :location, :price - float

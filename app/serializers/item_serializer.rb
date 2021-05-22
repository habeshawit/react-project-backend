class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image_url, :category_id, :category, :user_id, :user
  belongs_to :category
end

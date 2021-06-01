class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image_url, :condition, :category_id, :category, :created_at, :user_id, :user
  belongs_to :category
end

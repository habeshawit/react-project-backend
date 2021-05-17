class ItemSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :qty, :price, :image_url, :category_id, :category

  belongs_to :category
end

class ItemSerializer < ActiveModel::Serializer
  
  #include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :price, :image_url, :condition, :category_id, :category, :created_at, :user_id, :user #, :images
  belongs_to :category

  # def images
  #   rails_blob_path(object.images, only_path: true) if object.images.attached?
  # end

end

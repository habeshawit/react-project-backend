class ItemSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :price, :image_url, :condition, :category_id, :category, :created_at, :user_id, :user, :image
  belongs_to :category

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image, only_path: true)
      }
    end
  end

  # def images
  #   object.images.map do |image|
  #     Rails.application.routes.url_helpers.rails_blob_url(image, only_path: true) if object.images.attached?
  #   end
  # end
end

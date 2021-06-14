class Item < ApplicationRecord
    belongs_to :category
    belongs_to :user
    validates :name, :price, presence: true

    # has_many_attached :images, :dependent => :destroy
    has_one_attached :image
end

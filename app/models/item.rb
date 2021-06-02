class Item < ApplicationRecord
    belongs_to :category
    belongs_to :user
    validates :name, presence: true

    #has_many_attached :images, :dependent => :destroy
end

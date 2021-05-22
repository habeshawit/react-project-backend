class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :contact_preference, :location, :items

  has_many :items
end

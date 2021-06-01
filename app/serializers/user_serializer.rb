class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :contact_preference, :location, :created_at, :items
  has_many :items
end

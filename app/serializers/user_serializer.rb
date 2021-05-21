class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :items

  has_many :items
end

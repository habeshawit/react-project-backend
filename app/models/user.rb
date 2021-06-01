class User < ApplicationRecord
    has_many :items
    has_secure_password
    validates :username, presence: true
    validates :email, uniqueness: true
end

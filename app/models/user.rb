class User < ApplicationRecord
    has_many :items #, dependent :destroy

    has_secure_password
    validates :username, presence: true
    validates :email, uniqueness: true
end

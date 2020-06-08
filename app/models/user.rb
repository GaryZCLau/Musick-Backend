class User < ApplicationRecord
    has_many :activities

    has_secure_password
    validates_uniqueness_of :name
end

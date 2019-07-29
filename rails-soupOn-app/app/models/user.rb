class User < ApplicationRecord
    has_many :reviews
    has_many :soups, through: :reviews
end

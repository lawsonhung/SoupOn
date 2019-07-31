class Review < ApplicationRecord
  belongs_to :user
  belongs_to :soup
  validates :comment, presence: true
  validates :rating, numericality: {less_than: 5}
  validates :rating, numericality: {greater_than: 1}

end

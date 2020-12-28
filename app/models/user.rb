class User < ApplicationRecord
  has_many :comments
  has_many :posts
  
  validates :username,
            presence: true,
            length: { minimum: 6, maximum: 20 },
            uniqueness: true
end

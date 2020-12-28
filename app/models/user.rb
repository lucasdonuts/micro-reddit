class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts, dependent: :destroy

  validates :username,
            presence: true,
            length: { minimum: 6, maximum: 20 },
            uniqueness: true
end

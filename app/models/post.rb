class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user, presence: true #Probably not needed
  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  validates :body, presence: true, length: { maximum: 500 }
end

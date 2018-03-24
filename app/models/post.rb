class Post < ApplicationRecord
  enum status: [:draft, :published]

  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
end

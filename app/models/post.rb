class Post < ApplicationRecord
  belongs_to :category

  has_many :comments, dependent: :destroy

  has_many :post_authorings, class_name: "PostsUser", dependent: :destroy
  has_many :authors, through: :post_authorings, source: :user

  has_many :post_taggings, class_name: "PostsTag", dependent: :destroy
  has_many :tags, through: :post_taggings
  # accepts_nested_attributes_for :tags
end

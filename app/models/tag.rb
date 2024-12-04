class Tag < ApplicationRecord
  has_many :taggings
  has_many :articles, through: :taggings

  include FriendlyId
  friendly_id :name, use: :slugged
end

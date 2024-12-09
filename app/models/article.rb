class Article < ApplicationRecord
  include Visible

  include PgSearch::Model
  # Can include searching by adding author column and then adding a weighting to prioritise by title then author
  pg_search_scope :search_by_title, against: :title, using: {
    tsearch: { prefix: true }
  }

  include FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  mount_uploader :image, ImageUploader

  # Getter method that formats article tags array into a string e.g. "tag1, tag2, tag3"
  # Displays current tags when editing
  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  # Setter method that updates the tags association, tag_list= refers to a virtual attribute
  # and is not stored in the articles table.
  # I am assuming this gets called in the update method of the article_controller
  # @article.update(article_params)
  def tag_list=(tags_string)
    # tags_string is a value like "tag1, tag2, tag3"
    tag_names = tags_string.split(",").collect { |s| s.strip.downcase }.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end

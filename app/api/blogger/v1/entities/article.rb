module Blogger
  module V1
    module Entities
      class Article < Grape::Entity
        expose :title
        expose :created_at
        expose :updated_at
        expose :impression_count
        expose :read_count
        expose :user, using: User, as: :author
        expose :comments, using: Comment
        expose :tags, using: Tag
        # Could add tags list with tag_list.split(",") instead of the Tag objects
      end
    end
  end
end

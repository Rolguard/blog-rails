module Blogger
  module V1
    module Entities
      class Article < Grape::Entity
        expose :title
        expose :created_at
        expose :updated_at
        expose :impression_count
        expose :read_count
        # TODO: Expose the user object associated with the article, so expose using: would be used here for a nested entity
        # Use expose :user, using: Blogger::V1:Entities::User
      end
    end
  end
end

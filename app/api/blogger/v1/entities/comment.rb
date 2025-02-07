module Blogger
  module V1
    module Entities
      class Comment < Grape::Entity
        expose :id
        expose :body
        expose :created_at
      end
    end
  end
end

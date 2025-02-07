module Blogger
  module V1
    module Entities
      class User < Grape::Entity
        expose :id
        expose :created_at
        expose :username
      end
    end
  end
end

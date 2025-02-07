module Blogger
  module V1
    module Entities
      class Tag < Grape::Entity
        expose :id
        expose :name
        expose :created_at
      end
    end
  end
end

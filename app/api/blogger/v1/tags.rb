module Blogger
  module V1
    class Tags < Grape::API
      resource :tags do
        desc "Return a list of all tags."
        get do
          tags = Tag.all
          present tags, with: Blogger::V1::Entities::Tag
        end
      end

      # Include route for adding tags?
    end
  end
end

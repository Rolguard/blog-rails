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
    end
  end
end

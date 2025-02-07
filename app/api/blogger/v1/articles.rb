module Blogger
  module V1
    class Articles < Grape::API
      resource :articles do
        desc "Return a list of all public and approved articles"
        get do
          articles = Article.where(publish_status: "public", approval_status: "accepted")
          present articles, with: Blogger::V1::Entities::Article
        end

        # Return an article specified by :id e.g. /articles/:id
      end
    end
  end
end

module Blogger
  module V1
    class Articles < Grape::API
      resource :articles do
        desc "Return a list of all public and approved articles"
        get do
          articles = Article.where(publish_status: "public", approval_status: "accepted")
          present articles, with: Entities::Article
        end

        desc "Returns an article."
        # params block gives parameter validation, instead of params block for route_param
        # Can do route_param :id, type: Integer do instead of a params block as they are equivalent
        # But no desc
        params do
          requires :id, type: Integer, desc: "Article ID."
        end
        route_param :id do
          get do
            article = Article.find(params[:id])
            present article, with: Entities::Article
          end
        end

        # Add a route /article/:id/tags which returns the tags for a specific article.
        # In this format {tags: ["ai", "amd", "technology"]}
      end
    end
  end
end

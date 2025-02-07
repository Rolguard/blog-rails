module Blogger
  module V1
    class Articles < Grape::API
      # Add conditional for ArticleEntity only displaying if the article
      # Has a publish_status == :public AND approval_status == :accepted
      resource :articles do
        desc "Return a list of all articles"
        get do
          articles = Article.all
          present articles, with: Blogger::V1::Entities::Article
        end
      end
    end
  end
end

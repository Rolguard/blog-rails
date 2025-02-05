module Blogger
  module V1
    class Articles < Grape::API
      resource :articles do
        desc "Return a list of all articles"
        get do
          Article.all
        end
      end
    end
  end
end

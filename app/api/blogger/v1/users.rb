module Blogger
  module V1
    class Users < Grape::API
      resource :users do
        desc "Return a list of all non-privileged users."
        get do
          users = User.where.not(role: "admin")
          present users, with: Entities::User
        end

        route_param :id, type: Integer do
          desc "Returns a user."
          get do
            # TODO: Return an HTTP authorisation error when trying to access the information
            # For a user who is an admin. I.e. if user.admin? --> return HTTP 403 error
            user = User.find(params[:id])
            present user, with: Entities::User
          end
          desc "Return a list of all articles made by a user."
          get "articles" do
            articles = User.find(params[:id]).articles
            present articles, with: Entities::Article
          end
          desc "Return a list of all comments made by a user."
          get "comments" do
            comments = User.find(params[:id]).comments
            present comments, with: Entities::Comment
          end
        end
      end
    end
  end
end

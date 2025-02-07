module Blogger
  module V1
    class Users < Grape::API
      resource :users do
        desc "Return a list of all non-privileged users."
        get do
          users = User.where.not(role: "admin")
          present users, with: Blogger::V1::Entities::User
        end

        # Return a list of all articles made by a user. /users/articles

        # Return a list of all comments made by a user. /users/comments
      end
    end
  end
end

class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all.sort_by { |user| user.username.downcase }
  end
end

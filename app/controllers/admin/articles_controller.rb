class Admin::ArticlesController < Admin::BaseController
  def index
    @users = User.all
  end
end

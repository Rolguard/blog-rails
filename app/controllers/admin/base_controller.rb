class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, :check_if_admin
  def portal
    @users = User.all
  end

  protected
  def check_if_admin
    if !current_user.admin?
      redirect_to root_path
    end
  end
end

class Admin::BaseController < ApplicationController
  def portal
    @users = User.all
  end
end

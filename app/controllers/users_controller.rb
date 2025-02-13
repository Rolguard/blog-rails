class UsersController < ApplicationController
  before_action :authenticate_user!, except: [ :show ]
  def show
    @user = User.find(params[:id])
    # User.all.each do |user|
    #   user.image.recreate_versions!
    # end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.expect(user: [ :username, :email, :role, :created_datetime, :image, :remove_image ])
    end
end

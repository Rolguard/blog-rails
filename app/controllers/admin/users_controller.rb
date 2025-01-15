class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all.sort_by { |user| user.username.downcase }
  end

  def show
    @user = User.find(params[:id])
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

  # Later can consider adding ability for admins to delete users from database
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy

  #   redirect_to root_path, status: :see_other
  # end
end

class UsersController < ApplicationController
  def index

  end

  def new

    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to [:admin, :products], notice: 'Product created!'
    else
      # render :new
      redirect_to [:admin]
    end

  end


  private

  def user_params
  
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end

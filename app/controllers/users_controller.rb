class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user), notice: "User was successfully registered."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstName, :lastName, :address, :postalCode, :city, :country, :email, :reason)
  end
end

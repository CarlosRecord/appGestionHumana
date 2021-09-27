class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "El usuario se creo exitosamente"
    else
      redirect_to root_path, notice: "El usuario ya existe"
    end
  end

  private

  def user_params
    params.require(:user).permit(:cedula, :name, :last_name, :email, :cell_phone)
  end
end

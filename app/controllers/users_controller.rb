class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to login_path, notice: 'ユーザー登録に成功しました'
    else
      flash.now[:danger] = 'ユーザー登録に失敗しました'
      render :new
    end
  end

  def show ;end

  def edit ;end

  def update ;end

  def destroy ;end

  private

  def user_params
    params.require(:user).permit(:name, :email, :role, :password, :password_confirmation)
  end

end

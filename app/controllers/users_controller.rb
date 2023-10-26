class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

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

  def show; end

  def edit ;end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), success: "編集に成功しました"
    else
      flash.now[danger] = "編集に失敗しました"
      render :edit
    end
  end

  def destroy ;end

  private

  def user_params
    params.require(:user).permit(:name, :email, :role, :password, :password_confirmation)
  end

  def set_user
    @user = current_user
  end
end

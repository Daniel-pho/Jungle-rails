class UsersController < ApplicationController
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
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

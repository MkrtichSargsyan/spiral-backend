class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  def create
    @user = User.create(user_params)
    p '.............'
    p @user
    if @user.valid?
      token = encode_token({ email: @user.email, password: @user.password })
      render json: { token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = encode_token({ email: @user.email, password: @user.password })
      render json: { token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

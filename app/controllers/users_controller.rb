class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  def create
    @user = User.create(user_params)
    p '.............'
    p @user
    if @user.valid?
      token = encode_token({ email: @user.email, password: @user.password_digest })
      render json: { token: token, user: @user }
    else
      render status: :unauthorized, json: { message: 'Invalid email or password' }
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])

      token = encode_token({ email: @user.email, password: @user.password_digest })
      render json: { token: token, user: @user }
    else
      render status: :unauthorized, json: { message: 'Invalid email or password' }
    end
  end

  def apply
    if logged_in_user
      p '...........'
      p params
      house_id = params[:house_id]
      logged_in_user.appointments.create(house_id: house_id)
    else
      p 'You are not logged in bruh'
    end

    # @user = User.find(params[:user_id])
    # p '////////////'
    # p @user

    # user_id = params[:user_id]
    # agent_id = params[:agent_id]
    # @user.appointments.create(user_id:user_id,job_id:job_id)
  end

  def auto_login
    render json: logged_in_user if logged_in_user
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end

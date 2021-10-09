class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  def create
    @user = User.create(user_params)
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
      user = logged_in_user
      house_id = params[:house_id]
      user.appointments.create(house_id: house_id)
    else
      p 'You are not logged in bruh'
    end
  end

  def show_appointments
    render json: logged_in_user.appointments
  end

  def auto_login
    render json: logged_in_user if logged_in_user
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end

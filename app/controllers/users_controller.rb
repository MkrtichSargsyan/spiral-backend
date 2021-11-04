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
    if @user&.authenticate(params[:password])

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

  def remove_appointment
    if logged_in_user
      user = logged_in_user
      appointment_id = params[:appointment_id]
      choosed = user.appointments.find(appointment_id)
      user.appointments.delete(choosed)
    else
      p 'You are not logged in bruh'
    end
  end

  def show_appointments
    appointments = logged_in_user.appointments
    appointment_data = []

    appointments.each do |el|
      temp = {}
      temp[:appointment_id] = el.id
      temp[:user_house] = el.house
      temp[:agent_to_connect] = el.house.agent
      appointment_data << temp
    end

    render json: appointment_data
  end

  def auto_login
    render json: logged_in_user if logged_in_user
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end

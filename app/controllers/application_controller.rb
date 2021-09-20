class ApplicationController < ActionController::API
  before_action :authorized

  def hmac_secret
    ENV['API_SECRET_KEY']
  end

  def encode_token(payload)
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  def decoded_token
    begin
      token = request.headers['Authorization']
      decoded_array = JWT.decode(token, hmac_secret, true, algorithm: 'HS256')
      payload = decoded_array.first
    rescue StandardError # JWT::VerificationError
      return nil
    end
    payload
  end

  def logged_in_user
    if decoded_token
      user_email = decoded_token[0]['email']
      @user = User.find_by(email: user_email)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end

class ApplicationController < ActionController::API
  before_action :authorized

  def hmac_secret
    ENV['API_SECRET']
  end

  def encode_token(payload)
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    p 'aaaaaaaaaaaaaaaaaa'
    p auth_header
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        p '/////////////////'
        p JWT.decode(token, hmac_secret, 'HS256')
        JWT.decode(token, hmac_secret, 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
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

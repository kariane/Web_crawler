#  frozen_string_literal: true
module Api
  class AuthenticationController < ApplicationController
    before_action :authorize_request, except: :login

    # POST /auth/login
    def login
      @user = User.find_by(email: login_params[:email], password: login_params[:password])
      token = JsonWebTokenService.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i

      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                      username: @user.username }, status: :ok
    end

    private

    def login_params
      params.permit(:email, :password)
    end
  end
end

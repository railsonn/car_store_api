class AuthController < ApplicationController
  def login
    @user = User.find_by(email: params[:email])

    unless @user.valid?
      render json: { error: "Invalid email or password" },
      status: :unprocessable_entity
    else
      token = encode_token({ user_id: @user.id })
      render json: { id: @user.id, email: @user.email, token: token }, 
      token: token,
      status: :ok 
    end
  end
end

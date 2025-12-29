class UserController < ApplicationController
  def create
    @user = User.create(user_params)
    
    if @user.valid?
        token = encode_token({ user_id: @user.id })
        render json: { id: @user.id, email: @user.email, token: token }, status: :created
    else
        render json: { error: "falha ao criar usuario" }, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private 

  def user_params
    params.permit(:email, :password)
  end
end

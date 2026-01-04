class UserController < ApplicationController

  def index 
    @users = User.all
    render json: { users: @users }
  end


  def create
    @user = User.create(user_params)
    
    if @user.valid?
        token = encode_token({ user_id: @user.id })
        render json: { id: @user.id }, status: :created
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

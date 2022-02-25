class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:destroy]

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy

    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end


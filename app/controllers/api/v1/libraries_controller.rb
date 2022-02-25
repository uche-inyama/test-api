class Api::V1::LibrariesController < ApplicationController
  before_action :set_library, only: [:update, :destroy]
  before_action :set_user, only: [:index, :create]

  def index
    user_library = @user.libraries.get_user_library

    render json: user_library, status: :ok
  end

  def create
    @library = @user.libraries.build(library_params)
    if @library.save
      render json: @library, status: :created
    else
      render json: @library.errors.full_messages[0], status: :unprocessable_entity
    end
  end

  def update
    if @library.update(library_params)
      render json: @library, status: :ok
    else
      render json: @library.errors, status: :unprocessable_entity 
    end
  end

  def destroy
    @library.destroy

    head :no_content
  end

  private

  def library_params
    params.require(:library).permit(:title, :content, :status, :user_id, :content_id)
  end

  def set_library
    @library = Library.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end

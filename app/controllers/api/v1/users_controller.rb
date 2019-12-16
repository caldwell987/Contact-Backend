class Api::V1::UsersController < ApplicationController
  # skip_before_action :authenticated
  include CurrentUserConcern
  
  def index
    @users = User.all
    # render json: @users, status: 200
    render json: @users
  end

  def find_by_id 
    @user = User.find(params[:id])

    render json: @user, include: :contacts, status: 200
  end

  # def find_by_username
  #   @username = User.find(params[:username])

  #   render json: @username, status: 200
  # end

  def render_current_user 
    render json: @current_user, status: 200
  end


  def user_params
    params.require(:contact).permit(:id, :username, :password, :password_confirmation, :firstname, :lastname)
  end

  


end


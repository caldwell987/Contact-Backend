class Api::V1::UsersController < ApplicationController
  # skip_before_action :authenticated
  
  def index
    @users = User.all
    # render json: @users, status: 200
    render json: @users
  end

  def find_by_id 
    @user = User.find(params[:id])
  end

  
end


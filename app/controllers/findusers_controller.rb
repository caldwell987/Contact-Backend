class FindusersController < ApplicationController

  
    def find_by_id 
      @user = User.find(params[:id])
  
      render json: @user, include: :contacts, status: 200
    end
  
  
    def user_params
      params.require(:contact).permit(:id, :username, :password, :password_confirmation, :firstname, :lastname)
    end
  
end
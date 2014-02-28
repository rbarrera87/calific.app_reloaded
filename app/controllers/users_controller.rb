class UsersController < ApplicationController
  layout 'home'
  
  def index
  end
  private
  def user_params
  	params.require(:user).permit(:roles)
  end
end

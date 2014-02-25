class UsersController < ApplicationController
  layout 'welcome'
  
  def index
  end
  private
  def user_params
  	params.require(:user).permit(:roles)
  end
end

class WelcomeController < ApplicationController
	before_filter :authenticate_user!
  
	layout 'welcome'
	  def index
	  end
end

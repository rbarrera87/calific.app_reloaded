class HomeController < ApplicationController

		def index
			if user_signed_in?
				redirect_to controller: 'welcome', action: 'index'
			end		
		end
end

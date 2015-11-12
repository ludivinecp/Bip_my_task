class UsersController < ApplicationController
	 before_action :authenticate_user!
  def index
  	
  	@taskss= Task.all
  	 @tasks = Task.find(current_user_id)
  end

  def show
     
  end

end

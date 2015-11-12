class UsersController < ApplicationController
	 before_action :authenticate_user!
  
  def index
  	@alltasks = Task.all
  	@tasks = Task.where(user_id: current_user.id)
  end

	def create
  	if @user.save
      redirect_to user_path

  	else
      render :index
  	end
  end

  def show
      @user = User.find(current_user.id)
  end

  def update
  	@user = current_user.update(user_params)
  	if @user
  		redirect_to user_path(current_user.id)
  	else 
  		render :show
  	end
	end

	private
	def user_params
		params.require(:user).permit(:name, :surname, :date_birth, :gender, :phone, :adress, :zip_code, :town, :description, :langage, :photos)
  end

end

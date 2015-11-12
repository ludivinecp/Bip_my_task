class TasksController < ApplicationController
  def index
    @tasks = Task.all  
  end

  def new
    @task = Task.new
    @category= Category.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save  
      flash[:notice] = "Your event has been created !"
      redirect_to task_path(@task.id)
    else
      flash[:error] = "There were errors..."
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
     @task = Task.find(params[:id])
    if @task.update(task_params)  
      flash[:notice] = "Your event has been edited !"
      redirect_to task_path(@task.id)
    else
      flash[:error] = "There were errors..."
      render :edit
    end
  end

 def delete
   @task = Task.find(params[:id])
    @task.delete
    flash[:destroy] = "Your event has been deleted"
    redirect_to root_path
  end

  def destroy
   
    
  end


   private
  def task_params
       params.require(:task).permit(:name, :date, :hour, :place, :description)
  end
end



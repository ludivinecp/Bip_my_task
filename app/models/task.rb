class Task < ActiveRecord::Base
	 validates_presence_of :name, :date
	 belongs_to :category 
	  
	 geocoded_by :place  
	 after_validation :geocode        

def previous
  Task.where(["date < ?", date]).last
end

def next
  Task.where(["date > ?", date]).first
end

def finish
	@task = Task.find(params[:id])
	if @task.date < Date.now
		@task.delete
	end
end

end

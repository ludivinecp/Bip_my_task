class Task < ActiveRecord::Base
	 validates_presence_of :name, :start_time
	 belongs_to :category 
	 belongs_to :user
	  
	 geocoded_by :place  
	 after_validation :geocode        

def previous
  Task.where(["start_time < ?", start_time]).last
end

def next
  Task.where(["start_time > ?", start_time]).first
end

def finish
	@task = Task.find(params[:id])
	if @task.start_time < start_time.now
		@task.delete
	end
end

end


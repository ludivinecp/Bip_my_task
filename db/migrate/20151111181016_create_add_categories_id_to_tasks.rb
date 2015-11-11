class CreateAddCategoriesIdToTasks < ActiveRecord::Migration
  def change
   
  	add_reference :tasks, :categorie, index: true, foreign_key: true
 
  end
end

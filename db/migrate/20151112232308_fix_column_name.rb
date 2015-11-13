class FixColumnName < ActiveRecord::Migration
  def change

    rename_column :tasks, :date, :start_time
  
  end
end

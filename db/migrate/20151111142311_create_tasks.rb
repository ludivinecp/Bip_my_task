class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :date
      t.time :hour
      t.string :place
      t.string :description

      t.timestamps null: false
    end
  end
end

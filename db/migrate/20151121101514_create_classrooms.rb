require_relative '../config'

class CreateClassrooms < ActiveRecord::Migration
	def change
  	create_table :classrooms do |t|
  	t.belongs_to :student, index: true
  	t.belongs_to :teacher, index: true
  	t.timestamps null: false
		end
	end
end

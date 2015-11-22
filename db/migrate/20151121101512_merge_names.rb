require_relative '../config'
require 'byebug'

class MergeNames < ActiveRecord::Migration
	def up
		add_column :students, :name, :string

		Student.all.each do |person|
		person.update (name: "#{person.first_name} #{person.last_name}")
		end
		remove_column :students, :first_name
		remove_column :students, :last_name
	end

	def down
		add_column :students, :first_name, :string
		add_column :students, :last_name, :string

		Student.all.each do |person|
			person.update :first_name => "#{person.name.match(/\w+/)[0]}"
			person.update :last_name => "#{person.name.match(/\w+/)[1]}"
		end
		remove_column :students, :name
	end
end

# class ChangeStudents < ActiveRecord::Migration
#   def change
#     add_column :students, :name, :string
#     add_column :students, :address, :string

#     reversible do |dir|
#       dir.up do
#         Student.all.each do |x|
#           x.update(name: "#{x.first_name} #{x.last_name}")
#         end
#       end
#       dir.down do
#         Student.all.each do |x|
#           name = x.name.split(" ")
#           x.update(first_name: name[0])
#           x.update(last_name: name[1])
#         end
#       end
#     end

#     remove_column :students, :first_name
#     remove_column :students, :last_name
#   end
# end

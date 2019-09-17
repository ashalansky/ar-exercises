require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter store name:"
@name = gets.chomp
puts "Enter store revenue:"
@annual_revenue = gets.chomp
create_store = Store.create(name: @name, annual_revenue: @annual_revenue)
puts create_store.errors.messages

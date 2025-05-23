require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "White-Rock", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where("womens_apparel = true AND annual_revenue < ?", 1000000)
@mens_stores.each do |store| 
  puts store.name
  puts store.annual_revenue
end

@womens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end


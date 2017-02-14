require_relative '../setup'

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1_260_000 carries women's apparel only)
#   * Gastown (annual_revenue of 190_000 carries men's apparel only)
# 2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that
#   there are three stores in the database.


puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Create an Array of new objects
puts 'Initial Store Count'
puts Store.count

Store.create([
  { name: 'Burnaby', annual_revenue: 300_000, mens_apparel: true, womens_apparel: true},
  { name: 'Richmond', annual_revenue: 1_260_000, mens_apparel: false, womens_apparel: true},
  { name: 'Burnaby', annual_revenue: 190_000, mens_apparel: true, womens_apparel: false}
  ])

puts 'Store count after database insertion'
puts Store.count

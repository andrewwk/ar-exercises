require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
#   * Surrey (annual_revenue of 224_000, carries women's apparel only)
#   * Whistler (annual_revenue of 1_900_000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430_000 carries men's and women's apparel)
# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

puts "Exercise 4"
puts "----------"

puts 'Initial Store Count'
puts Store.count

Store.create([
  { name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true},
  { name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false},
  { name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true}
  ])

puts 'Store count after database insertion'
puts Store.count

@mens_stores = Store.where(mens_apparel: true)

def print(stores)
  stores.each do |store|
    puts store
  end
end

print(@mens_stores)

@womens_stores = Store.where('womens_apparel = ? AND annual_revenue < ?', true, 1_000_000)

puts @womens_stores

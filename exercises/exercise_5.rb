require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

# 1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
# 2. On the next line, also output the average annual revenue for all stores.
# 3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.

puts "Exercise 5"
puts "----------"

@sum_revenue         = Store.sum(:annual_revenue)
@average_revenue     = Store.average(:annual_revenue)
@high_revenue_stores = Store.where('annual_revenue > ?', 1_000_000).count

puts @sum_revenue
puts @average_revenue
puts @high_revenue_stores

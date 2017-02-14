require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.
#
# Let's tell Active Record that these two tables are in fact related via the `store_id` column.
#
# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)
@store6 = Store.find_by(id: 6)

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Andrew", last_name: "Ski", hourly_rate: 69)

@store2.employees.create(first_name: "Bob", last_name: "Porsche", hourly_rate: 45)
@store2.employees.create(first_name: "Janice", last_name: "Lexus", hourly_rate: 100)

@store4.employees.create(first_name: "Jim", last_name: "Bob", hourly_rate: 1)
@store4.employees.create(first_name: "Billy", last_name: "Jean", hourly_rate: 20)

@store5.employees.create(first_name: "James", last_name: "Bond", hourly_rate: 69)
@store5.employees.create(first_name: "John", last_name: "Deere", hourly_rate: 85)

@store6.employees.create(first_name: "Salvatore", last_name: "Ferragamo", hourly_rate: 900)
@store6.employees.create(first_name: "Hugo", last_name: "Boss", hourly_rate: 250)

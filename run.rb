require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
larry = Manager.new("Larry", "Deliveries", 35)
jimbo = Manager.new("Jim", "Sales", 28)

larry.hire_employee("Mitchell", 40001)
larry.hire_employee("Michelle", 40000)
jimbo.hire_employee("Bob", 50000)
jimbo.hire_employee("Taniya", 53000)

binding.pry
puts "done"

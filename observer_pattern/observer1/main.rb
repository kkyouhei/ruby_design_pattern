require './payroll.rb'
require './taxman.rb'
require './employee.rb'

john = Employee.new('john', 'worker', 100)
john.add_observer(Payroll.new)
john.add_observer(Taxman.new)
john.salary = 200

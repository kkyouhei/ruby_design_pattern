require './payroll.rb'
require './employee.rb'

john = Employee.new('john', 'worker', 100)
john.add_observer(Payroll.new)
john.salary = 200

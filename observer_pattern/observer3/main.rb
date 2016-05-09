require './employee.rb'

john = Employee.new('john', 'worker', 100)
john.add_observer do |notify|
  puts("#{notify.name}に新しい小切手を切ります!")
end
john.salary = 200

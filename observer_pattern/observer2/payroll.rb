class Payroll
  def update(changed_employee)
    puts "#{changed_employee.name}の給料が#{changed_employee.salary}ドルに上がりました!"
    puts "経理部門は#{changed_employee.name}に小切手を切ります！"
  end
end

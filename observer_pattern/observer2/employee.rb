require './subject.rb'

class Employee
  include Subject

  attr_reader :salary
  attr_accessor :name, :address

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    old_salary = @salary
    @salary = new_salary
    if old_salary != new_salary
      notify_observers
    end
  end
end

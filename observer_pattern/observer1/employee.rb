class Employee
  attr_reader :salary
  attr_accessor :title, :name

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  private
  def notify_observers
    @observers.each do |obs|
      obs.update(self)
    end
  end
end

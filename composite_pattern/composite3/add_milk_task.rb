require './task.rb'

class AddMilkTask < Task
  def initialize
    super "Add Milk Task"
  end

  def get_time_rquired
    0.4
  end
end

require "./task.rb"

class AddMilkTask < Task
  def initialize
    super "Add dry ingredients"
  end

  def get_time_rquired
    1.0
  end
end

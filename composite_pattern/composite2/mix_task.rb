require './task.rb'

class MixTask < Task
  def initialize
    super "Mix Task"
  end

  def get_time_rquired
    0.4
  end
end

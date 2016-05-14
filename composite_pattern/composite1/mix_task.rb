require "./task.rb"

class MixTask < Task
  def initialize
    super "Mix that batter up"
  end

  def get_time_rquired
    3.0
  end
end

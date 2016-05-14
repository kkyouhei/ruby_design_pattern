require "./task.rb"
require "./mix_task.rb"
require "./add_milk_task.rb"

class MakeBatterTask < Task
  def initialize
    super "Make batter"
    @sub_tasks = []
    add_sub_task AddMilkTask.new
    add_sub_task MixTask.new
    self
  end

  def add_sub_task task
    @sub_tasks << task
  end

  def remove_sub_task task
    @sub_tasks.delete task
  end

  def get_time_rquired
    time=0.0
    @sub_tasks.each {|task| time += task.get_time_rquired}
    time
  end
end

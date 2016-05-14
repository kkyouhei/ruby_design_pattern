require './task.rb'

class CompositeTask < Task
  def initialize name
    super name
    @sub_tasks = []
  end

  def << task
    @sub_tasks << task
  end

  def [] index
    @sub_tasks[index]
  end

  def []= index, new_value
    @sub_tasks[index] = new_value
  end

  def remove_sub_task task
    @sub_tasks.delete task
  end
  def get_time_rquired
    time = 0.0
    @sub_tasks.each {|task| time += task.get_time_rquired }
    time
  end
end

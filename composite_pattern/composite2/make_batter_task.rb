require './composite_task.rb'
require './mix_task.rb'

class MakeBatterTask < CompositeTask
  def initialize
    super "Make batter"
    add_sub_task MixTask.new
  end
end

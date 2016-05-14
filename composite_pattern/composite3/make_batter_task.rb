require './composite_task.rb'
require './mix_task.rb'
require './add_milk_task.rb'

class MakeBatterTask < CompositeTask
  def initialize
    super "Make Batter"
    self << MixTask.new
    self << AddMilkTask.new
  end
end

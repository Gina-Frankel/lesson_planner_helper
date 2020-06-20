class ResourcePlanner
  attr_reader :heading, :resources
  def initialize
    @heading = 'Resources:'
    @resources =[]
  end

  def add_plan(user_input)
    resources.push(user_input)
  end 
end
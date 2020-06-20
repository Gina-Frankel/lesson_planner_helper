class ResourcePlanner
  attr_reader :heading, :resources
  def initialize
    @heading = 'Resources:'
    @resources = ['Resources:']
  end

  def add_to_plan(user_input)
    resources.push(user_input)
    resources.join("\n")
  end 
end
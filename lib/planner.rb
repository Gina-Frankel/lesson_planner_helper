class Planner
  attr_reader :resources
  def initialize
    @resources = []
  end

  def get_welcome_message
    'Welcome to the Provocation Station Planning Tool'
  end

  def add_resource(resource_item)
    resources.push(resource_item)
    resources.join("\n")
  end 
end
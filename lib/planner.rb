class Planner
  attr_reader :resources, :questions
  def initialize
    @resources = []
    @questions = []
  end

  def get_welcome_message
    'Welcome to the Provocation Station Planning Tool'
  end

  def add_resource(resource_item)
    resources.push(resource_item)
    resources.join("\n")
  end 

  def add_question(question)
    questions.push(question)
    questions.join("\n")
  end 

  def add_objective(objective)
    "To learn representational skills by drawing a robot"
  end
  
end